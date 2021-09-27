import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:zoomer/core/network/dio_helper.dart';
import 'package:zoomer/core/network/network_info.dart';
import 'package:zoomer/localization/app_localizations.dart';

GetIt injection = GetIt.I;

Future setUpLocator() async {
  injection.registerSingleton<Dio>(DioHelper.getDio());
  injection.registerSingleton<DataConnectionChecker>(DataConnectionChecker());
  injection.registerSingleton<NetworkInfo>(NetworkInfoImpl(injection()));
  injection.registerSingleton<FlutterSecureStorage>(FlutterSecureStorage());
}

Future setUpLocatorWithContext(BuildContext context) async {
  injection.registerSingleton<AppLocalizations>(AppLocalizations.of(context));
}
