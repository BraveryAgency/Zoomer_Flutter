import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:zoomer/domain/entities/network/broadcast.dart';
import 'package:zoomer/domain/entities/network/request/close_broadcast_body.dart';

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

  @POST('/openvidu/close')
  Future<HttpResponse<Broadcast>> closeBroadcast({
    @Header('Authorization') required String token,
    @Body() required CloseBroadcastBody body,
  });
}
