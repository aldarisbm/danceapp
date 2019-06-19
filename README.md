# dancebnb

Project to help social dancers find a place where to dance anywhere in the world. 

A lot of the time is hard to find a place where to dance when you're on vacation or you've traveled somewhere new. You ask a friend, two friends, even three friends and noone can help you. This app can.

The idea is to help people who are traveling to new places and looking for socials and maybe even a place to stay.

## Getting Started

For an idea on the architecture of the application, we'll be using flutter/dart for the frontend and firebase auth & firestore for the backend. 

## Steps to run 

- Get flutter @ [Flutter.dev](https://www.flutter.dev/download)

- Download VSCode

- Download [Flutter Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)

- Download [Dart Extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)

- You need an Android Virtual Device / For this project I'm using Android's own [AVD](https://developer.android.com/studio/run/managing-avds)

- As of flutter 1.5 I had some trouble adding firebase_auth dependency to the project because of `multidex`. Adding the following to the `android/app/build.gradle` fixed my problems.

    ```
    dependencies {
            implementation 'com.android.support:multidex:1.0.3'
            }
    defaultConfig {
            multiDexEnabled true
            }
    ```

- Firebase create new project
- After you create a project. 
    - Register app under `dev.joseberrio.danceapp` domain.
    
    - Get the local fingerprints to the firebase project with the following command: 
    `keytool -list -v -alias androiddebugkey -keystore ~/.android/debug.keystore` 

    - When prompted for a password use `android`

    - Get the SHA1 finger print, ie: `Certificate fingerprint: SHA1: DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09`

    - Download the config file `google-services.json` and `mv ~/Downloads/google-services.json ~/<YourPathToApp>/android/app/`

    - At the `/android/build.gradle` level, add the following dependencies:
    ```
    buildscript {
        dependencies {
            classpath 'com.google.gms:google-services:4.2.0'
        }
    }
    ```

    - At the `/android/app/build.gradle` level, add the following dependencies:
    ```
    defaultConfig {
        applicationId "dev.joseberrio.danceapp"
    }
    
    dependencies {
        implementation 'com.google.firebase:firebase-core:16.0.9'
    }

    apply plugin: 'com.google.gms.google-services'
    ```
    - Sync if the IDE prompts you to.

    - Hit next & reboot your app.

    - Wait for it to validate.

    - Enable `support email` under project settings !important

    - Enable `Firebase signin` for the project and then enable `Google login` under sign-in methods.

    - Enable `firestore` for the project.

- In your app, try the google login button.

- Make sure every developer adds their SHA1 fingerprint to the app, or google auth won't work.
