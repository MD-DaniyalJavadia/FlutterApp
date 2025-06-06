// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBKIlVkJCiocXxsSVwyKsEfsqZiGOi3F3M',
    appId: '1:1078711118773:web:81cf883ced5630bd28c7fc',
    messagingSenderId: '1078711118773',
    projectId: 'flutterapp-bb3e6',
    authDomain: 'flutterapp-bb3e6.firebaseapp.com',
    storageBucket: 'flutterapp-bb3e6.firebasestorage.app',
    measurementId: 'G-T7N85QRPH3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDIrtqpUQDhb6ajr-C9Jm1zFxwT-as2erY',
    appId: '1:1078711118773:android:3feac278a1a2749728c7fc',
    messagingSenderId: '1078711118773',
    projectId: 'flutterapp-bb3e6',
    storageBucket: 'flutterapp-bb3e6.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbC7cJD6MQZh-9eCoPsiYMlNh_Kdln0Gs',
    appId: '1:1078711118773:ios:cb916be7c85bddf228c7fc',
    messagingSenderId: '1078711118773',
    projectId: 'flutterapp-bb3e6',
    storageBucket: 'flutterapp-bb3e6.firebasestorage.app',
    iosBundleId: 'com.example.firstapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbC7cJD6MQZh-9eCoPsiYMlNh_Kdln0Gs',
    appId: '1:1078711118773:ios:cb916be7c85bddf228c7fc',
    messagingSenderId: '1078711118773',
    projectId: 'flutterapp-bb3e6',
    storageBucket: 'flutterapp-bb3e6.firebasestorage.app',
    iosBundleId: 'com.example.firstapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBKIlVkJCiocXxsSVwyKsEfsqZiGOi3F3M',
    appId: '1:1078711118773:web:e0527a93b232d16428c7fc',
    messagingSenderId: '1078711118773',
    projectId: 'flutterapp-bb3e6',
    authDomain: 'flutterapp-bb3e6.firebaseapp.com',
    storageBucket: 'flutterapp-bb3e6.firebasestorage.app',
    measurementId: 'G-5XXFZL9PK4',
  );
}
