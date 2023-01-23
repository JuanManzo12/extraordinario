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
    apiKey: 'AIzaSyCLzG2eT24xA0tX0kIOmOONZnJzuueU7Cg',
    appId: '1:501277047238:web:75f4e40cbdbd0f46df1ac7',
    messagingSenderId: '501277047238',
    projectId: 'dbextraordinario',
    authDomain: 'dbextraordinario.firebaseapp.com',
    storageBucket: 'dbextraordinario.appspot.com',
    measurementId: 'G-JDVVCBKS7W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNz6RSdpfjP5AvdyAtMMtNJojezZWuIqw',
    appId: '1:501277047238:android:4051b0585cc1808ddf1ac7',
    messagingSenderId: '501277047238',
    projectId: 'dbextraordinario',
    storageBucket: 'dbextraordinario.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkLoooVH1vKlZPtuW-nrqZVEv0x3PtyS0',
    appId: '1:501277047238:ios:68434b7d325cff07df1ac7',
    messagingSenderId: '501277047238',
    projectId: 'dbextraordinario',
    storageBucket: 'dbextraordinario.appspot.com',
    iosClientId:
        '501277047238-q8qklkid6d1iiu2gpg1pe8an9k59qiik.apps.googleusercontent.com',
    iosBundleId: 'com.example.extraordinaryExam',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkLoooVH1vKlZPtuW-nrqZVEv0x3PtyS0',
    appId: '1:501277047238:ios:68434b7d325cff07df1ac7',
    messagingSenderId: '501277047238',
    projectId: 'dbextraordinario',
    storageBucket: 'dbextraordinario.appspot.com',
    iosClientId:
        '501277047238-q8qklkid6d1iiu2gpg1pe8an9k59qiik.apps.googleusercontent.com',
    iosBundleId: 'com.example.extraordinaryExam',
  );
}
