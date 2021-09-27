import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:zoomer/core/ui/widgets/close_keyboard_by_tap.dart';
import 'package:zoomer/localization/app_localizations.dart';

import 'resources/app_themes.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late KeyboardVisibilityNotification _keyboardListener;

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
  }

  @override
  void dispose() {
    super.dispose();
    _keyboardListener.dispose();
  }

  @override
  Widget build(BuildContext context) => CloseKeyboardByTap(
        MaterialApp(
            theme: AppThemes.appTheme,
            locale: Locale('ru'),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: <LocalizationsDelegate<dynamic>>[
              AppLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [Locale('ru'), Locale('en'), Locale('de')],
            // home: BlocProvider(
            //           //   create: (BuildContext context) => SplashBloc(preferencesLocalGateway: injection())
            //           //     ..add(SplashEvent.checkAuthorizationStatus()), //SplashBloc()..add(CheckAuthorizationStatus()),
            //           //   child: SplashScreen(),
            //           // ),
            home: Container()),
      );
}
