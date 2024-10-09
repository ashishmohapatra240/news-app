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
    apiKey: 'AIzaSyBjuWyQuxMoucq2wijLfzixLxEOfshxiIs',
    appId: '1:930799625337:web:90b9b84a49292d64e720a8',
    messagingSenderId: '930799625337',
    projectId: 'news-app-4fc46',
    authDomain: 'news-app-4fc46.firebaseapp.com',
    storageBucket: 'news-app-4fc46.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJFbrdHZvcy2jxqGPRE_T69E2mSqP8WpQ',
    appId: '1:930799625337:android:8168a15444ccd29ee720a8',
    messagingSenderId: '930799625337',
    projectId: 'news-app-4fc46',
    storageBucket: 'news-app-4fc46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxu2xfZasug7KxFSGzmtX-AX0JP2MbZ8s',
    appId: '1:930799625337:ios:3ba7a9f6e10a5222e720a8',
    messagingSenderId: '930799625337',
    projectId: 'news-app-4fc46',
    storageBucket: 'news-app-4fc46.appspot.com',
    iosBundleId: 'com.example.newsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxu2xfZasug7KxFSGzmtX-AX0JP2MbZ8s',
    appId: '1:930799625337:ios:3ba7a9f6e10a5222e720a8',
    messagingSenderId: '930799625337',
    projectId: 'news-app-4fc46',
    storageBucket: 'news-app-4fc46.appspot.com',
    iosBundleId: 'com.example.newsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBjuWyQuxMoucq2wijLfzixLxEOfshxiIs',
    appId: '1:930799625337:web:380af83e6e573e58e720a8',
    messagingSenderId: '930799625337',
    projectId: 'news-app-4fc46',
    authDomain: 'news-app-4fc46.firebaseapp.com',
    storageBucket: 'news-app-4fc46.appspot.com',
  );
}
