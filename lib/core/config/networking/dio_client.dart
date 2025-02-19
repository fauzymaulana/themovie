import 'package:dio/dio.dart';
import 'package:watch_me/core/config/networking/api_config.dart';

import 'dio_interceptor.dart';


class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late final Dio dio;

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: ApiConfig.throttleTimeout,
        receiveTimeout: ApiConfig.throttleTimeout,
      ),
    );

    dio.interceptors.add(DioInterceptor());
  }
}