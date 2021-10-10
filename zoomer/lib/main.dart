import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app.dart';
import 'app/resources/app_styles.dart';
import 'di/injection.dart';

Future<void> _messageHandler(RemoteMessage message) async {
  print('background message ${message.notification!.body}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_messageHandler);
  SystemChrome.setSystemUIOverlayStyle(AppStyles.mainStyle);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await setUpLocator();
  runZonedGuarded(() {
    runApp(App());
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error in my root zone.\n $error $stackTrace');
  });
}
