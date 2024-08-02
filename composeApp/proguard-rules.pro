# proguard-rules.pro

# Application
-keepclasseswithmembers public class com.makeevrserg.composeshadow.MainKt {
    public static void main(java.lang.String[]);
}
# Kotlin
-keep class kotlin.** { *; }
-dontnote kotlin.**
-dontwarn kotlin.**
# Coroutines
-keep class kotlinx.coroutines.** { *; }
-dontnote kotlinx.coroutines.**
-dontwarn kotlinx.coroutines.**
# Serialization
-keep class okio.** { *; }
-dontnote okio.**
-dontwarn okio.**
# Compose
-keep class org.jetbrains.skia.** { *; }
-dontnote org.jetbrains.skia.**
-dontwarn org.jetbrains.skia.**
-keep class org.jetbrains.compose.** { *; }
-dontnote org.jetbrains.compose.**
-dontwarn org.jetbrains.compose.**
-keep class org.jetbrains.skiko.** { *; }
-dontnote org.jetbrains.skiko.**
-dontwarn org.jetbrains.skiko.**
-assumenosideeffects public class androidx.compose.runtime.ComposerKt {
    void sourceInformation(androidx.compose.runtime.Composer,java.lang.String);
    void sourceInformationMarkerStart(androidx.compose.runtime.Composer,int,java.lang.String);
    void sourceInformationMarkerEnd(androidx.compose.runtime.Composer);
}
-keep class androidx.compose.animation.core.Transition {*;}
-keep class androidx.compose.animation.core.TransitionKt {*;}
-keep class androidx.compose.ui.Modifier {*;}
-keep class * extends androidx.compose.ui.Modifier {*;}
-keep class * extends androidx.compose.animation.core.Transition {*;}
-keep class * extends androidx.compose.animation.core.TransitionKt {*;}
# Java
-keep class java.lang.** { *; }
-dontnote java.lang.**
-dontwarn java.lang.**
# SLF4J
-keep class org.slf4j.** { *; }
-dontwarn org.slf4j.**
-dontwarn org.slf4j.**

# SQLite
-keep class org.sqlite.** { *; }
-dontnote org.sqlite.**
-dontwarn org.sqlite.**

# Coroutines
-keep class org.apache.poi.** { *; }
-dontnote org.apache.poi.**
-dontwarn org.apache.poi.**

-keep class java.awt.** { *; }
-dontnote   java.awt.**
-dontwarn   java.awt.**

-keep class javax.accessibility.** { *; }
-dontnote   javax.accessibility.**
-dontwarn   javax.accessibility.**

-keep class org.apache.xmlbeans.** { *; }
-dontnote org.apache.xmlbeans.**
-dontwarn org.apache.xmlbeans.**
-keep class org.openxmlformats.** { *; }
-dontnote org.openxmlformats.**
-dontwarn org.openxmlformats.**
-keep class org.apache.xmlgraphics.** { *; }
-dontnote org.apache.xmlgraphics.**
-dontwarn org.apache.xmlgraphics.**
-keep class org.apache.commons.** { *; }
-dontnote org.apache.commons.**
-dontwarn org.apache.commons.**
-keep class org.jetbrains.annotations.** { *; }
-dontnote org.jetbrains.annotations.**
-dontwarn org.jetbrains.annotations.**
-keep class org.slf4j.** { *; }
-dontnote org.slf4j.**
-dontwarn org.slf4j.**
-keep class org.w3c.** { *; }
-dontnote org.w3c.**
-dontwarn org.w3c.**
-keep class org.xml.** { *; }
-dontnote org.xml.**
-dontwarn org.xml.**
-keep class androidx.collection.** { *; }
-dontnote androidx.collection.**
-dontwarn androidx.collection.**
-keep class androidx.compose.** { *; }
-dontnote androidx.compose.**
-dontwarn androidx.compose.**
-keep class androidx.lifecycle.** { *; }
-dontnote androidx.lifecycle.**
-dontwarn androidx.lifecycle.**
-keep class androidx.room.** { *; }
-dontnote androidx.room.**
-dontwarn androidx.room.**
-keep class androidx.sqlite.** { *; }
-dontnote androidx.sqlite.**
-dontwarn androidx.sqlite.**
-keep class co.touchlab.kermit.** { *; }
-dontnote co.touchlab.kermit.**
-dontwarn co.touchlab.kermit.**
-keep class com.arkivanov.decompose.** { *; }
-dontnote com.arkivanov.decompose.**
-dontwarn com.arkivanov.decompose.**
-keep class com.arkivanov.essenty.** { *; }
-dontnote com.arkivanov.essenty.**
-dontwarn com.arkivanov.essenty.**
-keep class com.arkivanov.mvikotlin.** { *; }
-dontnote com.arkivanov.mvikotlin.**
-dontwarn com.arkivanov.mvikotlin.**
-keep class com.graphbuilder.** { *; }
-dontnote com.graphbuilder.**
-dontwarn com.graphbuilder.**
-keep class com.ibm.icu.** { *; }
-dontnote com.ibm.icu.**
-dontwarn com.ibm.icu.**
-keep class com.microsoft.schemas.** { *; }
-dontnote com.microsoft.schemas.**
-dontwarn com.microsoft.schemas.**
-keep class com.russhwolf.settings.** { *; }
-dontnote com.russhwolf.settings.**
-dontwarn com.russhwolf.settings.**
-keep class com.sun.jna.** { *; }
-dontnote com.sun.jna.**
-dontwarn com.sun.jna.**
-keep class com.zaxxer.sparsebits.** { *; }
-dontnote com.zaxxer.sparsebits.**
-dontwarn com.zaxxer.sparsebits.**
-keep class dev.icerock.moko.** { *; }
-dontnote dev.icerock.moko.**
-dontwarn dev.icerock.moko.**
-keep class io.github.vinceglb.** { *; }
-dontnote io.github.vinceglb.**
-dontwarn io.github.vinceglb.**
-keep class io.ktor.client.** { *; }
-dontnote io.ktor.client.**
-dontwarn io.ktor.client.**
-keep class io.ktor.http.** { *; }
-dontnote io.ktor.http.**
-dontwarn io.ktor.http.**
-keep class io.ktor.network.** { *; }
-dontnote io.ktor.network.**
-dontwarn io.ktor.network.**
-keep class io.ktor.util.** { *; }
-dontnote io.ktor.util.**
-dontwarn io.ktor.util.**
-keep class io.ktor.utils.** { *; }
-dontnote io.ktor.utils.**
-dontwarn io.ktor.utils.**
-keep class io.ktor.websocket.** { *; }
-dontnote io.ktor.websocket.**
-dontwarn io.ktor.websocket.**
-keep class javax.xml.** { *; }
-dontnote javax.xml.**
-dontwarn javax.xml.**
-keep class kotlinx.atomicfu.** { *; }
-dontnote kotlinx.atomicfu.**
-dontwarn kotlinx.atomicfu.**
-keep class kotlinx.datetime.** { *; }
-dontnote kotlinx.datetime.**
-dontwarn kotlinx.datetime.**
-keep class org.apache.batik.** { *; }
-dontnote org.apache.batik.**
-dontwarn org.apache.batik.**
-keep class org.apache.logging.** { *; }
-dontnote org.apache.logging.**
-dontwarn org.apache.logging.**
-keep class org.apache.xmlcommons.** { *; }
-dontnote org.apache.xmlcommons.**
-dontwarn org.apache.xmlcommons.**
-keep class org.etsi.uri.** { *; }
-dontnote org.etsi.uri.**
-dontwarn org.etsi.uri.**
-keep class org.intellij.lang.annotations.** { *; }
-dontnote org.intellij.lang.annotations.**
-dontwarn org.intellij.lang.annotations.**
-keep class org.w3.x2000.** { *; }
-dontnote org.w3.x2000.**
-dontwarn org.w3.x2000.**
-keep class ru.astrainteractive.klibs.** { *; }
-dontnote ru.astrainteractive.klibs.**
-dontwarn ru.astrainteractive.klibs.**
-keep class androidx.annotation.** { *; }
-dontnote androidx.annotation.**
-dontwarn androidx.annotation.**
-keep class io.ktor.serialization.** { *; }
-dontnote io.ktor.serialization.**
-dontwarn io.ktor.serialization.**
-keep class io.ktor.events.** { *; }
-dontnote io.ktor.events.**
-dontwarn io.ktor.events.**
-keep class io.ktor.content.** { *; }
-dontnote io.ktor.content.**
-dontwarn io.ktor.content.**
-keep class androidx.arch.core.** { *; }
-dontnote androidx.arch.core.**
-dontwarn androidx.arch.core.**
# Shit
-dontnote _COROUTINE._BOUNDARY
-dontwarn _COROUTINE._BOUNDARY
-dontnote _COROUTINE.CoroutineDebuggingKt
-dontwarn _COROUTINE.CoroutineDebuggingKt
-dontnote _COROUTINE.ArtificialStackFrames
-dontwarn _COROUTINE.ArtificialStackFrames
-dontnote _COROUTINE._CREATION
-dontwarn _COROUTINE._CREATION
-dontnote _COROUTINE.CoroutineDebuggingKt
-dontwarn _COROUTINE.CoroutineDebuggingKt
-dontnote _COROUTINE.ArtificialStackFrames
-dontwarn _COROUTINE.ArtificialStackFrames
# AstraLearner
-dontnote com.makeevrserg.astralearner.**
-dontwarn com.makeevrserg.astralearner.**
# AstraLearner
-dontnote ru.astrainteractive.astralearner.**
-dontwarn ru.astrainteractive.astralearner.**
-keep class * extends com.makeevrserg.astralearner.db.room.DictionaryDatabase {*;}
-keep class com.makeevrserg.astralearner.db.room.** {*;}
-keep class * extends com.makeevrserg.astralearner.db.room.** {*;}

# AstraLearner
-keep class java.util.** { *; }
-dontnote java.util.**
-dontwarn java.util.**

-dontnote org.apache.commons.compress.harmony.pack200.**
-dontwarn org.apache.commons.compress.harmony.pack200.**
-keep class * extends org.apache.commons.compress.harmony.pack200 {*;}

-keep class org.objectweb.asm.** { *; }
-dontnote org.objectweb.asm.**
-dontwarn org.objectweb.asm.**

-keep class jdk.internal.org.objectweb.asm.** { *; }
-dontnote jdk.internal.org.objectweb.asm.**
-dontwarn jdk.internal.org.objectweb.asm.**

# Serialization default
-if @kotlinx.serialization.Serializable class **
-keepclassmembers class <1> {
    static <1>$Companion Companion;
}
-if @kotlinx.serialization.Serializable class ** {
    static **$* *;
}
-keepclassmembers class <2>$<3> {
    kotlinx.serialization.KSerializer serializer(...);
}
-if @kotlinx.serialization.Serializable class ** {
    public static ** INSTANCE;
}
-keepclassmembers class <1> {
    public static <1> INSTANCE;
    kotlinx.serialization.KSerializer serializer(...);
}
-keepattributes RuntimeVisibleAnnotations,AnnotationDefault
-dontnote kotlinx.serialization.**
-dontwarn kotlinx.serialization.internal.ClassValueReferences

# Serialization all
-if @kotlinx.serialization.Serializable class **
-keep, allowshrinking, allowoptimization, allowobfuscation class <1>

-keepattributes *Annotation*, InnerClasses
-dontnote kotlinx.serialization.AnnotationsKt # core serialization annotations

# kotlinx-serialization-json specific. Add this if you have java.lang.NoClassDefFoundError kotlinx.serialization.json.JsonObjectSerializer
-keepclassmembers class kotlinx.serialization.json.** {
    *** Companion;
}
-keepclasseswithmembers class kotlinx.serialization.json.** {
    kotlinx.serialization.KSerializer serializer(...);
}

-keep,includedescriptorclasses class com.makeevrserg.**$$serializer { *; } # <-- change package name to your app's
-keepclassmembers class com.makeevrserg.** { # <-- change package name to your app's
    *** Companion;
}
-keepclasseswithmembers class com.makeevrserg.** { # <-- change package name to your app's
    kotlinx.serialization.KSerializer serializer(...);
}

-keep,includedescriptorclasses class ru.astrainteractive.**$$serializer { *; } # <-- change package name to your app's
-keepclassmembers class ru.astrainteractive.** { # <-- change package name to your app's
    *** Companion;
}
-keepclasseswithmembers class ru.astrainteractive.** { # <-- change package name to your app's
    kotlinx.serialization.KSerializer serializer(...);
}