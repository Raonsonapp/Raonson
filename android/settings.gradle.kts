pluginManagement {
    val flutterSdkPath = run {
        val properties = java.util.Properties()
        if (file("local.properties").exists()) {
            file("local.properties").inputStream().use { properties.load(it) }
            properties.getProperty("flutter.sdk") ?: System.getenv("FLUTTER_ROOT")
                ?: error("flutter.sdk not set in local.properties and FLUTTER_ROOT is not set")
        } else {
            System.getenv("FLUTTER_ROOT")
                ?: error("local.properties not found and FLUTTER_ROOT is not set; set FLUTTER_ROOT or create local.properties with flutter.sdk")
        }
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.7.0" apply false
    id("org.jetbrains.kotlin.android") version "1.8.22" apply false
}

include(":app")
