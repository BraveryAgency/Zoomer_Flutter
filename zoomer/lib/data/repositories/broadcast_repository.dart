import 'package:dartz/dartz.dart';
import 'package:zoomer/core/failures.dart';
import 'package:zoomer/core/network/network_info.dart';
import 'package:zoomer/core/repositories/base_repository.dart';
import 'package:zoomer/data/gateways/remote/authorization_remote_gateway.dart';
import 'package:zoomer/data/gateways/remote/broadcast_remote_gateway.dart';
import 'package:zoomer/domain/entities/broadcast_entity.dart';
import 'package:zoomer/domain/entities/login_entity.dart';
import 'package:zoomer/domain/entities/network/request/login_body.dart';

class BroadcastRepository extends BaseRepository {
  BroadcastRepository(
      NetworkInfo networkInfo, {
        required this.broadcastRemoteGateway,
      }) : super(networkInfo);

  BroadcastRemoteGateway broadcastRemoteGateway;

  Future<Either<BroadcastEntity, Failure>> getBroadcast({
    required String token,
  }) async {
    try {
      var result = await sendRequest(broadcastRemoteGateway.getBroadcast(
        token:token
      ));
      return result.fold(
            (response) => Left(BroadcastEntity.fromResponse(response)),
            (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

}
