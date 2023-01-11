import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8Gpfv9CYPAqOocLZxawnpjgwk2N4m_4I",
            authDomain: "parklib-fd682.firebaseapp.com",
            projectId: "parklib-fd682",
            storageBucket: "parklib-fd682.appspot.com",
            messagingSenderId: "578888163908",
            appId: "1:578888163908:web:58e256089a7aef589c1211",
            measurementId: "G-V5PQRYBC7D"));
  } else {
    await Firebase.initializeApp();
  }
}
