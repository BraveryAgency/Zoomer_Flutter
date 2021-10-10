import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PreferencesLocalGateway {
  PreferencesLocalGateway({
    required this.flutterSecureStorage,
  });

  static const tokenKey = 'token';

  static const rememberMeStatusKey = 'rememberMeStatusKey';

  FlutterSecureStorage flutterSecureStorage;

  Future<String?> getToken() async {
    String? token = await flutterSecureStorage.read(key: tokenKey);

    if (token == null) {
      return null;
    } else {
      return 'Bearer ' + token;
    }
  }

  Future<void> setToken(String? apiToken) {
    return flutterSecureStorage.write(key: tokenKey, value: apiToken);
  }

  Future<void> setRememberMeStatus(bool? status) {
    return flutterSecureStorage.write(key: rememberMeStatusKey, value: status.toString());
  }

  Future<bool> getRememberMeStatus() async {
    String? status = await flutterSecureStorage.read(key: rememberMeStatusKey);

    if (status == 'true') {
      return true;
    } else {
      return false;
    }
  }
}
