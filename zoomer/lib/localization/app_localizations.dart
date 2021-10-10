import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static String _getFormattedString(String string, List<String> inserts) {
    String newString = string;
    inserts.forEach((insert) {
      newString = newString.replaceFirst('{\$}', insert);
    });
    return newString;
  }

  late Map<String, String> _localizedStrings;

  Future<bool> load() async {
    String jsonString = await rootBundle.loadString('assets/i18n/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  String get password => _localizedStrings['password'] ?? '';

  String get logIn => _localizedStrings['logIn'] ?? '';

  String get email => _localizedStrings['email'] ?? '';

  String get upcomingBroadcast => _localizedStrings['upcomingBroadcast'] ?? '';

  String get streamNow => _localizedStrings['streamNow'] ?? '';

  String get noUpcomingBroadcastsFound => _localizedStrings['noUpcomingBroadcastsFound'] ?? '';

  String get rememberMe => _localizedStrings['rememberMe'] ?? '';

  String get profile => _localizedStrings['profile'] ?? '';

  String get guestAccess => _localizedStrings['guestAccess'] ?? '';

  String get payment => _localizedStrings['payment'] ?? '';

  String get support => _localizedStrings['support'] ?? '';

  String get search => _localizedStrings['search'] ?? '';
  String get createGuestAccess => _localizedStrings['createGuestAccess'] ?? '';

  String get accessRecovery => _localizedStrings['accessRecovery'] ?? '';

  String get confirm => _localizedStrings['confirm'] ?? '';

  String get newPassword => _localizedStrings['newPassword'] ?? '';

  String get repeatNewPassword => _localizedStrings['repeatNewPassword'] ?? '';

  String get nothingFound => _localizedStrings['nothingFound'] ?? '';
  String get createNewPassword => _localizedStrings['createNewPassword'] ?? '';

  String get passwordMismatch => _localizedStrings['passwordMismatch'] ?? '';

  String get enterNewPassword => _localizedStrings['enterNewPassword'] ?? '';

  String get passwordMustContainAtLeast6Characters => _localizedStrings['passwordMustContainAtLeast6Characters'] ?? '';

  String get invalidLoginOrPassword => _localizedStrings['invalidLoginOrPassword'] ?? '';

  String get recover => _localizedStrings['recover'] ?? '';

  String get paymentHistory => _localizedStrings['paymentHistory'] ?? '';

  String get pay => _localizedStrings['pay'] ?? '';

  String get monthlyPayment => _localizedStrings['monthlyPayment'] ?? '';

  String get activeUntil => _localizedStrings['activeUntil'] ?? '';

  String needToPayDebtInAmount(String amount) =>
      _getFormattedString(_localizedStrings['needToPayDebtInAmount'] ?? '', [amount]);
  String get choosePlacement => _localizedStrings['choosePlacement'] ?? '';
  String get message => _localizedStrings['message'] ?? '';
  String get send => _localizedStrings['send'] ?? '';

  String get connected => _localizedStrings['connected'] ?? '';

  String get currentPaymentDate => _localizedStrings['currentPaymentDate'] ?? '';

  String get amountPay => _localizedStrings['amountPay'] ?? '';

  String get payDept => _localizedStrings['payDept'] ?? '';

  String get vehicles => _localizedStrings['vehicles'] ?? '';

  String get number => _localizedStrings['number'] ?? '';

  String get brandId => _localizedStrings['brandId'] ?? '';

  String get personalArea => _localizedStrings['personalArea'] ?? '';
  String get createAccess => _localizedStrings['createAccess'] ?? '';
  String get invite => _localizedStrings['invite'] ?? '';
  String get guestPhone => _localizedStrings['guestPhone'] ?? '';
  String get notePurposeOfVisit => _localizedStrings['notePurposeOfVisit'] ?? '';
  String get select => _localizedStrings['select'] ?? '';
  String get dateSelector => _localizedStrings['dateSelector'] ?? '';
  String get amountOfDaysMustNotBeGreaterThanThreeDays =>
      _localizedStrings['amountOfDaysMustNotBeGreaterThanThreeDays'] ?? '';

  String get open => _localizedStrings['open'] ?? '';

  String get close => _localizedStrings['close'] ?? '';

  String get camera => _localizedStrings['camera'] ?? '';

  String get somethingWrongTryAgain => _localizedStrings['somethingWrongTryAgain'] ?? '';

  String get name => _localizedStrings['name'] ?? '';
  String get ok => _localizedStrings['ok'] ?? '';
  String get cantGetData => _localizedStrings['cantGetData'] ?? '';
  String get cantGetGeoPermission => _localizedStrings['cantGetGeoPermission'] ?? '';
  String get checkYourInternetConnection => _localizedStrings['checkYourInternetConnection'] ?? '';
  String get checkYourGeoSettings => _localizedStrings['checkYourGeoSettings'] ?? '';
  String get error => _localizedStrings['error'] ?? '';
  String get somethingWentWrong => _localizedStrings['somethingWentWrong'] ?? '';
  String get incorrectCode => _localizedStrings['incorrectCode'] ?? '';

  String get userDoesNotExist => _localizedStrings['userDoesNotExist'] ?? '';
  String get contactYourManagementCompany => _localizedStrings['contactYourManagementCompany'] ?? '';
  String get limitOfAttemptsExceededPleaseTryIn => _localizedStrings['limitOfAttemptsExceededPleaseTryIn'] ?? '';
  String get invalidConfirmationCode => _localizedStrings['invalidConfirmationCode'] ?? '';
  String get fillField => _localizedStrings['fillField'] ?? '';
  String get incorrectData => _localizedStrings['incorrectData'] ?? '';
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['ru', 'en', 'de'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = new AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
