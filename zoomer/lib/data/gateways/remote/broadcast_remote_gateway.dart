import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zoomer/domain/entities/network/broadcast.dart';
import 'package:zoomer/domain/entities/network/request/login_body.dart';
import 'package:zoomer/domain/entities/network/response/login_response.dart';

part 'broadcast_remote_gateway.g.dart';

@RestApi()
abstract class BroadcastRemoteGateway {
  factory BroadcastRemoteGateway({required Dio dio, String? baseUrl}) {
    final apiClient = _BroadcastRemoteGateway(dio, baseUrl: baseUrl);
    return apiClient;
  }

  @GET('/stream_property')
  Future<HttpResponse<Broadcast>> getBroadcast({
    @Header('Authorization') required String token,
  });

}
