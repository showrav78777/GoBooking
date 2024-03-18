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
    apiKey: 'AIzaSyByAOBXgch18nzKpGs6yGKb3Qq7RadGtiM',
    appId: '1:353684034425:web:ed47a94e7e6b8dea8755a8',
    messagingSenderId: '353684034425',
    projectId: 'gobooking-8cb01',
    authDomain: 'gobooking-8cb01.firebaseapp.com',
    databaseURL: 'https://gobooking-8cb01-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'gobooking-8cb01.appspot.com',
    measurementId: 'G-DEY313S9L7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA57dHsvNY7p51MOh1h8GNEu6Rx5NvZcI0',
    appId: '1:353684034425:android:45d55316e1c756448755a8',
    messagingSenderId: '353684034425',
    projectId: 'gobooking-8cb01',
    databaseURL: 'https://gobooking-8cb01-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'gobooking-8cb01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3T3yIRu6EDGrQegb5Yu-grmVPYCPteL4',
    appId: '1:353684034425:ios:7f3d73b311690af68755a8',
    messagingSenderId: '353684034425',
    projectId: 'gobooking-8cb01',
    databaseURL: 'https://gobooking-8cb01-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'gobooking-8cb01.appspot.com',
    iosBundleId: 'com.example.gobooking',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB3T3yIRu6EDGrQegb5Yu-grmVPYCPteL4',
    appId: '1:353684034425:ios:1a83193ae372fc5b8755a8',
    messagingSenderId: '353684034425',
    projectId: 'gobooking-8cb01',
    databaseURL: 'https://gobooking-8cb01-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'gobooking-8cb01.appspot.com',
    iosBundleId: 'com.example.gobooking.RunnerTests',
  );
}
