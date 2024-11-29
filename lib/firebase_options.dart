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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB1VFvePcdRnSVMXYDEDovd0pgSan_GY-s',
    appId: '1:733593320967:web:41f1095c9485bf15fcf4a2',
    messagingSenderId: '733593320967',
    projectId: 'firbaseauthatication',
    authDomain: 'firbaseauthatication.firebaseapp.com',
    storageBucket: 'firbaseauthatication.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-bJQ3YHdyO2BGigyursKxSZLytd_yR3A',
    appId: '1:733593320967:android:54488e5b0ae255d4fcf4a2',
    messagingSenderId: '733593320967',
    projectId: 'firbaseauthatication',
    storageBucket: 'firbaseauthatication.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB1VFvePcdRnSVMXYDEDovd0pgSan_GY-s',
    appId: '1:733593320967:web:2a3a31a39212fceefcf4a2',
    messagingSenderId: '733593320967',
    projectId: 'firbaseauthatication',
    authDomain: 'firbaseauthatication.firebaseapp.com',
    storageBucket: 'firbaseauthatication.firebasestorage.app',
  );
}
