import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zoomer/domain/entities/network/request/device_token_body.dart';
import 'package:zoomer/domain/entities/network/request/login_body.dart';
import 'package:zoomer/domain/entities/network/response/login_response.dart';

part 'authorization_remote_gateway.g.dart';

@RestApi()
abstract class AuthorizationRemoteGateway {
  factory AuthorizationRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _AuthorizationRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }

  @POST('/signin_zoomer')
  Future<HttpResponse<LoginResponse>> login({
    @Body() required LoginBody body,
  });

  @POST('/deviceToken')
  Future<HttpResponse<bool>> sendDeviceToken({
    @Header('Authorization') required String token,
    @Body() required DeviceTokenBody body,
  });

}
