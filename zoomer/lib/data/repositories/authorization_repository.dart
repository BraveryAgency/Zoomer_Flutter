import 'package:dartz/dartz.dart';
import 'package:zoomer/core/failures.dart';
import 'package:zoomer/core/network/network_info.dart';
import 'package:zoomer/core/repositories/base_repository.dart';
import 'package:zoomer/data/gateways/remote/authorization_remote_gateway.dart';
import 'package:zoomer/domain/entities/login_entity.dart';
import 'package:zoomer/domain/entities/network/request/login_body.dart';

class AuthorizationRepository extends BaseRepository {
  AuthorizationRepository(
    NetworkInfo networkInfo, {
    required this.authorizationRemoteGateway,
  }) : super(networkInfo);

  AuthorizationRemoteGateway authorizationRemoteGateway;

  @override
  Future<Either<LoginEntity, Failure>> login({
    required String email,
    required String password,
  }) async {
    try {
      var result = await sendRequest(authorizationRemoteGateway.login(
        body: LoginBody(
          email: email,
          password: password,
        ),
      ));
      return result.fold(
        (response) => Left(LoginEntity.fromResponse(response)),
        (error) => Right(error),
      );
    } on Exception catch (e) {
      return Right(Failure.undefined(error: e));
    }
  }

}
