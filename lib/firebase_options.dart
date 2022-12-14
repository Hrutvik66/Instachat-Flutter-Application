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
    apiKey: 'AIzaSyDEnrtpJMcLdB-oXGfQL63GxY2taH8dSaA',
    appId: '1:520789994229:web:2de9839817b04a254733bc',
    messagingSenderId: '520789994229',
    projectId: 'instachat-9766a',
    authDomain: 'instachat-9766a.firebaseapp.com',
    storageBucket: 'instachat-9766a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATZTkTVKcC_ZaxN0NInHyAv8zzvZkFU2I',
    appId: '1:520789994229:android:f33bb6866e668ec64733bc',
    messagingSenderId: '520789994229',
    projectId: 'instachat-9766a',
    storageBucket: 'instachat-9766a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpG8mIbPDMxPcsbT-bZRqdBmZFxSBZ4Dc',
    appId: '1:520789994229:ios:d7adf6198c920caa4733bc',
    messagingSenderId: '520789994229',
    projectId: 'instachat-9766a',
    storageBucket: 'instachat-9766a.appspot.com',
    iosClientId: '520789994229-9q9qj2pf0pqlp6s9urfmnmcj1g67idga.apps.googleusercontent.com',
    iosBundleId: 'com.example.instachat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpG8mIbPDMxPcsbT-bZRqdBmZFxSBZ4Dc',
    appId: '1:520789994229:ios:d7adf6198c920caa4733bc',
    messagingSenderId: '520789994229',
    projectId: 'instachat-9766a',
    storageBucket: 'instachat-9766a.appspot.com',
    iosClientId: '520789994229-9q9qj2pf0pqlp6s9urfmnmcj1g67idga.apps.googleusercontent.com',
    iosBundleId: 'com.example.instachat',
  );
}
