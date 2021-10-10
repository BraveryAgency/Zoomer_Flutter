import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:zoomer/app/presentation/screens/splash/bloc/splash_bloc.dart';
import 'package:zoomer/app/presentation/screens/splash/splash_screen.dart';
import 'package:zoomer/app/widgets/toasts/notification_toast.dart';
import 'package:zoomer/core/ui/widgets/close_keyboard_by_tap.dart';
import 'package:zoomer/di/injection.dart';
import 'package:zoomer/localization/app_localizations.dart';

import 'resources/app_themes.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late KeyboardVisibilityNotification _keyboardListener;

  late FirebaseMessaging messaging;

  @override
  void initState() {
    super.initState();
    _keyboardListener = KeyboardVisibilityNotification();
    _keyboardListener.addNewListener(onChange: (bool visible) {
      if (!visible) {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      }
    });
    messaging = FirebaseMessaging.instance;
    messaging.getToken().then((value) {
      print(value);
    });
    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print("message recieved");
      if (event.notification != null && event.data.isNotEmpty)
        showOverlayNotification(
          (context) {
            return SafeArea(
                child: Material(
                    color: Colors.transparent,
                    child: NotificationToast(
                      title: event.notification!.title!,
                      message: event.notification!.body!,
                      date: event.data['date'],
                      icon: event.data['icon'],
                    )));
          },
          duration: Duration(seconds: 2),
        );
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Message clicked!');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _keyboardListener.dispose();
  }

  @override
  Widget build(BuildContext context) => CloseKeyboardByTap(
        OverlaySupport(
          child: MaterialApp(
            theme: AppThemes.appTheme,
            locale: Locale('en'),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: <LocalizationsDelegate<dynamic>>[
              AppLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [Locale('ru'), Locale('en'), Locale('de')],
            home: BlocProvider(
              create: (BuildContext context) => SplashBloc(
                preferencesLocalGateway: injection(),
              ),
              child: SplashScreen(),
            ),
            //home: Container()),
          ),
        ),
      );
}
