# ConcealRevive
A modernized and upgraded fork of Facebook’s Conceal  library, created to help developers keep using Conceal while complying with Google Play’s 16 KB DEX file requirement and modern Gradle/Android toolchains.

# ConcealRevive 🔐  
[![Release](https://jitpack.io/v/appsunravel/ConcealRevive.svg)](https://jitpack.io/#appsunravel/ConcealRevive)
[![License](https://img.shields.io/badge/license-BSD%203--Clause-blue.svg)](LICENSE)

A **revived and upgraded** version of Facebook's [Conceal](https://github.com/facebook/conceal) – a fast, lightweight cryptography library for Android.

---


## 🎯 Purpose

Many apps still depend on Conceal for file and cache encryption but face compatibility issues with:  
- **Modern Gradle & AGP versions**  
- **Java 11+ toolchains**  
- **Google Play’s 16 KB DEX file requirement**  

**ConcealRevive** solves these problems, allowing developers to keep using Conceal without breaking builds or failing Play Store checks.

---


## ✨ Features

- ✅ **Complies with Google Play's 16 KB DEX requirement**  
- ✅ Works with **AGP 8.x+, Gradle 8+, Java 11+**  
- ✅ 100% backward compatible with the original Conceal API  
- ✅ Lightweight and optimized for Android apps  
- ✅ Perfect for encrypting/decrypting files, caches, and data at rest  

---


## 📦 Installation (via JitPack)

1. Add JitPack repository to your root `settings.gradle`:

```gradle
dependencyResolutionManagement {
    repositories {
        google()
        mavenCentral()
        maven { url 'https://jitpack.io' }
    }
}
```

2. Add the dependency to your app/build.gradle:
```gradle
dependencies {
    implementation 'com.github.appsunravel:ConcealRevive:3.0.0'
}
```


## 🔄 Migration Guide

If you were already using Facebook Conceal, switching is drop-in:
// Old
```gradle
implementation 'com.facebook.conceal:conceal:X.Y.Z'
```

// New
```gradle
implementation 'com.github.appsunravel:ConcealRevive:3.0.0'
```

No code changes needed – just update the dependency and rebuild.


## 📜 License

ConcealRevive is licensed under the BSD 3-Clause License.
This project retains Facebook’s original LICENSE
.

Disclaimer:
This project is not officially affiliated with or endorsed by Facebook/Meta.
ConcealRevive is a community-maintained fork designed to keep the library compatible with modern Android builds and Google Play’s 16 KB requirement.


## 🙌 Credits

Original library by [Facebook Conceal](https://github.com/facebookarchive/conceal)

Revived and maintained by [Muhammad Ahmed](https://pk.linkedin.com/in/ahmed-muhammad-islamabad)

[🔗 Connect with Me](https://wa.me/+923155155564)
