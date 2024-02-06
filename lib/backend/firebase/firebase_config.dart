import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCrH3nxXKIbraj0bsiysIovGbv3OpltPjg",
            authDomain: "buybrokoli-1.firebaseapp.com",
            projectId: "buybrokoli-1",
            storageBucket: "buybrokoli-1.appspot.com",
            messagingSenderId: "1092706180261",
            appId: "1:1092706180261:web:460ec1ad17f014eb71014c",
            measurementId: "G-GVH9TH86BJ"));
  } else {
    await Firebase.initializeApp();
  }
}
