import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:zoomer/core/network/dio_helper.dart';
import 'package:zoomer/core/network/network_info.dart';
import 'package:zoomer/data/gateways/local/preferences_local_gateway.dart';
import 'package:zoomer/data/gateways/remote/authorization_remote_gateway.dart';
import 'package:zoomer/data/gateways/remote/broadcast_remote_gateway.dart';
import 'package:zoomer/data/repositories/authorization_repository.dart';
import 'package:zoomer/data/repositories/broadcast_repository.dart';
import 'package:zoomer/localization/app_localizations.dart';

GetIt injection = GetIt.I;

Future<void> setUpLocatorWithContext(BuildContext context) async {
  injection.registerSingleton<AppLocalizations>(AppLocalizations.of(context));
}

Future setUpLocator() async {
  injection.registerSingleton<Dio>(DioHelper.getDio());
  injection.registerSingleton<DataConnectionChecker>(DataConnectionChecker());
  injection.registerSingleton<NetworkInfo>(NetworkInfoImpl(injection()));
  injection.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage());

  injection.registerLazySingleton<PreferencesLocalGateway>(() => PreferencesLocalGateway(
    flutterSecureStorage: injection(),
  ));

  injection.registerLazySingleton<AuthorizationRemoteGateway>(() => AuthorizationRemoteGateway(
    dio: injection(),
  ));

  injection.registerLazySingleton<BroadcastRemoteGateway>(() => BroadcastRemoteGateway(
    dio: injection(),
  ));

  injection.registerLazySingleton<AuthorizationRepository>(() => AuthorizationRepository(
    injection(),
    authorizationRemoteGateway: injection(),
  ));

  injection.registerLazySingleton<BroadcastRepository>(() => BroadcastRepository(
    injection(),
    broadcastRemoteGateway: injection(),
  ));
}

