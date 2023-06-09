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
    apiKey: 'AIzaSyBEyFDVjVVt2j5tTH7noWr6Bnaq2DMCRxM',
    appId: '1:1076468709163:web:ba368788aa8f904146776e',
    messagingSenderId: '1076468709163',
    projectId: 'studentnith-f671b',
    authDomain: 'studentnith-f671b.firebaseapp.com',
    storageBucket: 'studentnith-f671b.appspot.com',
    measurementId: 'G-S98ENE77ZG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_gkkZHuADASjbMgqUWyVDOozG7AfKjzI',
    appId: '1:1076468709163:android:6304bbb58929f16a46776e',
    messagingSenderId: '1076468709163',
    projectId: 'studentnith-f671b',
    storageBucket: 'studentnith-f671b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_hBnyWSqPj-Rn1hqtxTtn-TMO7H67tjA',
    appId: '1:1076468709163:ios:5a1c543b6dddb5be46776e',
    messagingSenderId: '1076468709163',
    projectId: 'studentnith-f671b',
    storageBucket: 'studentnith-f671b.appspot.com',
    iosClientId: '1076468709163-e8c0iqti9tk372autkn6vn1i47jh582h.apps.googleusercontent.com',
    iosBundleId: 'com.example.studentNith',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_hBnyWSqPj-Rn1hqtxTtn-TMO7H67tjA',
    appId: '1:1076468709163:ios:5a1c543b6dddb5be46776e',
    messagingSenderId: '1076468709163',
    projectId: 'studentnith-f671b',
    storageBucket: 'studentnith-f671b.appspot.com',
    iosClientId: '1076468709163-e8c0iqti9tk372autkn6vn1i47jh582h.apps.googleusercontent.com',
    iosBundleId: 'com.example.studentNith',
  );
}
