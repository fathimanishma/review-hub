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
    apiKey: 'AIzaSyAAxNH2NAWMzXFSc0e0xN-iufrvl9156HQ',
    appId: '1:936673783436:web:7d453268d9c0a8e5bc15a9',
    messagingSenderId: '936673783436',
    projectId: 'review-hub-79642',
    authDomain: 'review-hub-79642.firebaseapp.com',
    storageBucket: 'review-hub-79642.appspot.com',
    measurementId: 'G-XP96WWT936',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDehQ5KaPi8snIPdMH1tZe0driRwVHFjio',
    appId: '1:936673783436:android:d245c955a9c7ef86bc15a9',
    messagingSenderId: '936673783436',
    projectId: 'review-hub-79642',
    storageBucket: 'review-hub-79642.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgCiIRD6U7_z-NR_dWo6wk8t5d8Y8F6xc',
    appId: '1:936673783436:ios:0486b0c7030b8218bc15a9',
    messagingSenderId: '936673783436',
    projectId: 'review-hub-79642',
    storageBucket: 'review-hub-79642.appspot.com',
    iosBundleId: 'com.example.reviewHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCgCiIRD6U7_z-NR_dWo6wk8t5d8Y8F6xc',
    appId: '1:936673783436:ios:0486b0c7030b8218bc15a9',
    messagingSenderId: '936673783436',
    projectId: 'review-hub-79642',
    storageBucket: 'review-hub-79642.appspot.com',
    iosBundleId: 'com.example.reviewHub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAAxNH2NAWMzXFSc0e0xN-iufrvl9156HQ',
    appId: '1:936673783436:web:92f09eadd4f3eea1bc15a9',
    messagingSenderId: '936673783436',
    projectId: 'review-hub-79642',
    authDomain: 'review-hub-79642.firebaseapp.com',
    storageBucket: 'review-hub-79642.appspot.com',
    measurementId: 'G-VL00NZBDTK',
  );
}
