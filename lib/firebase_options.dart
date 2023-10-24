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
    apiKey: 'AIzaSyA0AoOwg3Z4UnI-aTfSaHUAdHtudsZeRgQ',
    appId: '1:971360498006:web:0b2103844ff64f519be6f7',
    messagingSenderId: '971360498006',
    projectId: 'fb-feedbck-app',
    authDomain: 'fb-feedbck-app.firebaseapp.com',
    databaseURL: 'https://fb-feedbck-app-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fb-feedbck-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDP3U2qPvBcWL7ml9V9t3NLcZN6NxdeI7M',
    appId: '1:971360498006:android:d1faad1cc12f56249be6f7',
    messagingSenderId: '971360498006',
    projectId: 'fb-feedbck-app',
    databaseURL: 'https://fb-feedbck-app-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fb-feedbck-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAVBSZ9XNa-TjExFKlGK3TCxEmf6wPgzg',
    appId: '1:971360498006:ios:f020f9534b0350ef9be6f7',
    messagingSenderId: '971360498006',
    projectId: 'fb-feedbck-app',
    databaseURL: 'https://fb-feedbck-app-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fb-feedbck-app.appspot.com',
    iosBundleId: 'com.example.feedbackApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCAVBSZ9XNa-TjExFKlGK3TCxEmf6wPgzg',
    appId: '1:971360498006:ios:eb07ad85506d31e89be6f7',
    messagingSenderId: '971360498006',
    projectId: 'fb-feedbck-app',
    databaseURL: 'https://fb-feedbck-app-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fb-feedbck-app.appspot.com',
    iosBundleId: 'com.example.feedbackApp.RunnerTests',
  );
}
