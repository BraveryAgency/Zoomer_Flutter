
import 'network/response/login_response.dart';

class LoginEntity {
  LoginEntity({
    required this.apiToken,
  });

  String apiToken;

  factory LoginEntity.fromResponse(LoginResponse response) => LoginEntity(
    apiToken: response.apiToken,
  );
}
