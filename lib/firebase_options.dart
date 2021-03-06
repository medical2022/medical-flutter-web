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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBA52FDYL4Wr_cOROetDSQh_mEnPLu_cVA',
    appId: '1:335100031725:web:dc392edb38dc96ff06d2e4',
    messagingSenderId: '335100031725',
    projectId: 'medicalrecord-f952a',
    authDomain: 'medicalrecord-f952a.firebaseapp.com',
    storageBucket: 'medicalrecord-f952a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGxS2pUGePONuwpvxfuex6IFDOwjZVSdk',
    appId: '1:335100031725:android:aa4b2d7ad207aab606d2e4',
    messagingSenderId: '335100031725',
    projectId: 'medicalrecord-f952a',
    storageBucket: 'medicalrecord-f952a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJ8b1wltbnyKiPFJrjt4PxpDrFpGzABW0',
    appId: '1:335100031725:ios:26be1d29be3704c206d2e4',
    messagingSenderId: '335100031725',
    projectId: 'medicalrecord-f952a',
    storageBucket: 'medicalrecord-f952a.appspot.com',
    iosClientId: '335100031725-94h9kui1215bunipe2hdhvhu66s12vka.apps.googleusercontent.com',
    iosBundleId: 'com.example.medicinesystem',
  );
}
