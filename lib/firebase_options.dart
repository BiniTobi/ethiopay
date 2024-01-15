// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD1g7mp7HJeY6nx4MHZw15UUHUUb_dXtmU',
    appId: '1:1053140963724:web:4fb4f70593ab00b528c6a9',
    messagingSenderId: '1053140963724',
    projectId: 'ethiopay-9d221',
    authDomain: 'ethiopay-9d221.firebaseapp.com',
    storageBucket: 'ethiopay-9d221.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYaH7wEx8cNS8ZRan-Xyr_9Oz5UxOHqk4',
    appId: '1:1053140963724:android:57a9f452c529714b28c6a9',
    messagingSenderId: '1053140963724',
    projectId: 'ethiopay-9d221',
    storageBucket: 'ethiopay-9d221.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXlcJwBIiTHzU1rtBiMfXL6fYy8BYYK_M',
    appId: '1:1053140963724:ios:350b374b5e7b64ef28c6a9',
    messagingSenderId: '1053140963724',
    projectId: 'ethiopay-9d221',
    storageBucket: 'ethiopay-9d221.appspot.com',
    iosBundleId: 'com.example.ethiopay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBXlcJwBIiTHzU1rtBiMfXL6fYy8BYYK_M',
    appId: '1:1053140963724:ios:231862ef0ba8a03c28c6a9',
    messagingSenderId: '1053140963724',
    projectId: 'ethiopay-9d221',
    storageBucket: 'ethiopay-9d221.appspot.com',
    iosBundleId: 'com.example.ethiopay.RunnerTests',
  );
}
