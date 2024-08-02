buildscript {
    dependencies {
        classpath(libs.proguard)
    }
}

plugins {
    alias(libs.plugins.kotlin.multiplatform).apply(false)
    alias(libs.plugins.kotlin.compose.gradle).apply(false)
    alias(libs.plugins.kotlin.compose).apply(false)
    alias(libs.plugins.shadow).apply(false)
}
