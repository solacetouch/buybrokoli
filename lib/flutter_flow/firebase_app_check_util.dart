import 'package:firebase_app_check/firebase_app_check.dart';

Future initializeFirebaseAppCheck() => FirebaseAppCheck.instance.activate(
      webProvider:
          ReCaptchaV3Provider('6Leah5omAAAAAOxr95Sa2RhmViRT7mAESBt1kBhy'),
      androidProvider: AndroidProvider.playIntegrity,
    );
