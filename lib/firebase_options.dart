import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyDgJmsDr-qAXDDFqDIPvV4B-zSKtn6SFm8",
      authDomain: "testapp1-1e440.firebaseapp.com",
      projectId: "testapp1-1e440",
      storageBucket: "testapp1-1e440.appspot.com",
      messagingSenderId: "517639179474",
      appId: "1:517639179474:web:69d52f40b9623849dab10b"
  );

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: "AIzaSyB_ilkroytFelgm90t_y8fnAXAS-v86pFg",
      authDomain: "eco-nepal.firebaseapp.com",
      projectId: "testapp1-1e440",
      storageBucket: "testapp1-1e440.appspot.com",
      messagingSenderId: "517639179474",
      appId: "1:517639179474:android:e037fb4ef1811a19dab10b",
      measurementId: "G-CTJMZ3ZZ8R"
  );

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: "AIzaSyD7FzcGdSGbdrp-I8vvrFe0r-eGy-NiZ6Q",
      authDomain: "eco-nepal.firebaseapp.com",
      projectId: "eco-nepal",
      storageBucket: "eco-nepal.appspot.com",
      messagingSenderId: "38478918538",
      appId: "1:38478918538:web:63e349c8ad477591f44e73",
      measurementId: "G-CTJMZ3ZZ8R"
  );

}