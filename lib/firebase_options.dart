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
    apiKey: 'AIzaSyDvKfVQYBWD7zxGxju0b77C8q2066_25x0',
    appId: '1:925901363049:web:1681b385efbe164cbbcff8',
    messagingSenderId: '925901363049',
    projectId: 'my-dog-ffed3',
    authDomain: 'my-dog-ffed3.firebaseapp.com',
    storageBucket: 'my-dog-ffed3.appspot.com',
    measurementId: 'G-NQVMYYQ1GS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB91vq0GOsBgByUDXs737BRzH_PhqZfZ2M',
    appId: '1:925901363049:android:ce928ded88045172bbcff8',
    messagingSenderId: '925901363049',
    projectId: 'my-dog-ffed3',
    storageBucket: 'my-dog-ffed3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSg8cr88IySORffyrAHo-xbBHFTb5rNOA',
    appId: '1:925901363049:ios:0dde178348ff019dbbcff8',
    messagingSenderId: '925901363049',
    projectId: 'my-dog-ffed3',
    storageBucket: 'my-dog-ffed3.appspot.com',
    iosBundleId: 'com.example.flutterMyDog1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSg8cr88IySORffyrAHo-xbBHFTb5rNOA',
    appId: '1:925901363049:ios:a4c5e2801e83d3b9bbcff8',
    messagingSenderId: '925901363049',
    projectId: 'my-dog-ffed3',
    storageBucket: 'my-dog-ffed3.appspot.com',
    iosBundleId: 'com.example.flutterMyDog1.RunnerTests',
  );
}
