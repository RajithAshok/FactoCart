import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCZwqLb_vifHU3nNknSYwqz306XoNQI7WY",
            authDomain: "aerospace-a5f15.firebaseapp.com",
            projectId: "aerospace-a5f15",
            storageBucket: "aerospace-a5f15.appspot.com",
            messagingSenderId: "236178661902",
            appId: "1:236178661902:web:e960fd3d5ac3e106f4d25f",
            measurementId: "G-ZE9ZZ1H24G"));
  } else {
    await Firebase.initializeApp();
  }
}
