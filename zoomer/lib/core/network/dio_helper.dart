import 'package:dio/dio.dart';

class DioHelper {
  static const baseUrl = 'http://651933-cd46896.tmweb.ru:8000/api/v1';
  // static const baseUrl = 'https://24dev.tregor.ru/api/v2';
  static const filesPath = '/files/';
  static const timeout = 30000;

  static Dio getDio() {
    return Dio()
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ))
      ..options.receiveDataWhenStatusError = true
      ..options.baseUrl = baseUrl
      ..options.sendTimeout = timeout
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;
  }
}
