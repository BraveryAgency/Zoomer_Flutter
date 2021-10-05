import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PreferencesLocalGateway {
  PreferencesLocalGateway({
    required this.flutterSecureStorage,
  });

  static const tokenKey = 'token';

  static const localeKey = 'locale';

  FlutterSecureStorage flutterSecureStorage;

  Future<String?> getToken() async {
    String? token = await flutterSecureStorage.read(key: tokenKey);
     return 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJsb2dpbiI6InRlc3RAbWFpbC5ydSIsImV4cCI6MTYzMzQ0ODE2NH0.I5uJfKxYBP0unlMZ_H336jF4i7dW9NzhsxWQ3bfGOfg';

    if (token == null) {
      return null;
    } else {
      return 'Bearer ' + token;
    }
  }

  Future setToken(String? apiToken) {
    return flutterSecureStorage.write(key: tokenKey, value: apiToken);
  }

  Future<String?> getLocale() async {
    String? locale = await flutterSecureStorage.read(key: localeKey);
    if (locale == null) {
      return null;
    } else {
      return locale;
    }
  }

  Future setLocale(String? locale) {
    return flutterSecureStorage.write(key: localeKey, value: locale);
  }
}
