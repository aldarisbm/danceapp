# danceapp

Project to help social dancers find a place where to dance anywhere in the world. 

A lot of the time is hard to find a place where to dance when you're on vacation or you've traveled somewhere new. You ask a friend, two friends, even three friends and noone can help you. This app can.

## Getting Started

I'm still deciding on the persistent layer.

## Steps to run 

- Get flutter @ [Flutter.dev](https://www.flutter.dev/download)
- Download VSCode
- Download [Flutter Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- Download [Dart Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)
- You need an Android Virtual Device / For this project I'm using Google's own [AVD](https://developer.android.com/studio/run/managing-avds)

#TODO => 

Document =>
    when adding firebase_auth to pubspec
    multidex error
    dependencies {

        implementation 'com.android.support:multidex:1.0.3'
    }
    defaultConfig {
            multiDexEnabled true
    }

Document => 

    create firebase app -> (follow their instructions) make sure to change the app build.gradle

    defaultConfig {
        //whatever name you gave it
        applicationId "dev.joseberrio.danceapp"
    }

once in the app MAKE SURE YOU ADD AN EMAIL
enable google sign in (under auth)
& create firestore

