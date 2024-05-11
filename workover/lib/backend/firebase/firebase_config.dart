import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCGDSy-3nQgHxqS51LFpyC5In4sT1rihSY",
            authDomain: "workover-85f3d.firebaseapp.com",
            projectId: "workover-85f3d",
            storageBucket: "workover-85f3d.appspot.com",
            messagingSenderId: "267286965519",
            appId: "1:267286965519:web:12fcc44171a7e77060a27a"));
  } else {
    await Firebase.initializeApp();
  }
}
