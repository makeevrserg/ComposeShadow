import com.github.jengelman.gradle.plugins.shadow.tasks.ShadowJar
import org.jetbrains.compose.desktop.application.dsl.TargetFormat
import proguard.gradle.ProGuardTask

plugins {
    kotlin("jvm")
    id("org.jetbrains.compose")
    alias(libs.plugins.kotlin.compose.gradle)
    alias(libs.plugins.shadow)
}

dependencies {
    // Compose-target
    implementation(compose.desktop.macos_x64)
    implementation(compose.desktop.macos_arm64)
    implementation(compose.desktop.linux_x64)
    implementation(compose.desktop.linux_arm64)
    implementation(compose.desktop.windows_x64)
    // Compose
    implementation(compose.runtime)
    implementation(compose.foundation)
    implementation(compose.material3)
    implementation(compose.components.resources)
    implementation(compose.components.uiToolingPreview)
}

compose.desktop {
    application {
        mainClass = "${libs.versions.packagename.get()}.MainKt"
        jvmArgs += listOf("--add-opens", "java.base/java.lang=ALL-UNNAMED")
        nativeDistributions {
            targetFormats(TargetFormat.Dmg, TargetFormat.Msi, TargetFormat.Deb)
            packageName = libs.versions.packagename.get()
            description = libs.versions.description.get()
            packageVersion = libs.versions.version.string.get()
            licenseFile.set(rootProject.file("LICENSE.md"))
            modules("java.sql")
            includeAllModules = false
            buildTypes.release.proguard {
                isEnabled = true
                obfuscate = true
                optimize = true
                joinOutputJars = true
                configurationFiles.from(
                    files(
                        "proguard-rules.pro",
                        "default-compose-desktop-rules.pro"
                    )
                )
            }
            val assets = project.file("src")
                .resolve("main")
                .resolve("resources")
                .resolve("assets")
            macOS {
                iconFile.set(assets.resolve("logo.icns"))
            }
            windows {
                iconFile.set(assets.resolve("logo.ico"))
            }
            linux {
                iconFile.set(assets.resolve("logo.png"))
            }
        }
    }
}

val shadowJar by tasks.named<ShadowJar>("shadowJar") {
    dependsOn(configurations)
    // Different for every project, but just in case
    minimize {
        // Exclude swign-coroutines
        exclude(dependency(libs.kotlin.coroutines.swing.get()))
        // Exclude ever compose target
        exclude(dependency(dependencies.compose.desktop.macos_x64))
        exclude(dependency(dependencies.compose.desktop.macos_arm64))
        exclude(dependency(dependencies.compose.desktop.linux_x64))
        exclude(dependency(dependencies.compose.desktop.linux_arm64))
        exclude(dependency(dependencies.compose.desktop.windows_x64))
        // Using apache poi? Or some other legacy java dependency?
        // Don't forget to exclude
        exclude(dependency("org.apache.poi:poi-ooxml:.*"))
        // Some subprojects excluded during minimize?
        // Add every dependency manually or everything at once like that
        rootProject.subprojects.map(::dependency).forEach(::exclude)
    }
    // Some default shadow setup
    mergeServiceFiles()
    isReproducibleFileOrder = true
    archiveClassifier = null as String?
    archiveVersion = "${libs.versions.version.string.get()}-desktop"
    archiveBaseName = libs.versions.name.get()
    // Relocate output jar into other folder
    rootProject.file("jars").also { destination ->
        if (!destination.exists()) destination.parentFile?.mkdirs()
        destinationDirectory = destination
    }
    // Don't forget to point into Main file which contains main() function
    manifest {
        attributes("Main-Class" to "${libs.versions.packagename.get()}.MainKt")
    }
}

tasks.register<ProGuardTask>("obfuscate") {
    // Don't use Jetbrains JDK!!
    dependsOn(shadowJar)
    // Insert basic jmods
    libraryjars("${compose.desktop.application.javaHome}/jmods/java.base.jmod")
    libraryjars("${compose.desktop.application.javaHome}/jmods/java.desktop.jmod")
    // If you have something specific - add this jars here, as in example
    libraryjars(project.file("lib").resolve("asm-3.1.jar"))
    // Create obfuscated from shadow output
    injars(shadowJar.outputs.files)
    // Set output file for obfuscated jar
    val obfuscated = rootProject.file("jars")
        .resolve("${libs.versions.name.get()}-${libs.versions.version.string.get()}-desktop-obf.jar")
    outjars(obfuscated)
    // Don't forget to create seed so you can backport obfuscated sources
    printseeds("$buildDir/obfuscated/seeds.txt")
    printmapping("$buildDir/obfuscated/mapping.txt")
    // Add any proguard files
    // And don't forget to add default compose desktop proguard
    configuration(files("proguard-rules.pro", "default-compose-desktop-rules.pro"))

    verbose()
}

