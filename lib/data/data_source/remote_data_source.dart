import 'package:dio/dio.dart';
import 'package:watch_me/core/config/networking/api_path.dart';
import 'package:watch_me/core/config/networking/dio_error_handler.dart';
import 'package:watch_me/data/entities/remote/base_paginate_response.dart';
import 'package:watch_me/data/entities/remote/movie_response.dart';

import '../../core/config/networking/dio_client.dart';

abstract class RemoteDataSource {
  Future<BasePaginateResponse<MovieResponse>> getNowPlayingMovies<T>();
  // Future<BasePaginateResponse<T>> getTopRatedMovies<T>();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final DioClient _dioClient;

  RemoteDataSourceImpl(this._dioClient);

  @override
  Future<BasePaginateResponse<MovieResponse>> getNowPlayingMovies<T>() async {
    try {
      final response = await _dioClient.dio.get(
        ApiPath.NOW_PLAYING,
        queryParameters: {
          'page': '1',
        },
      );

      final dynamic data = response.data;

      return BasePaginateResponse.fromJson(
        data,
        (json) => MovieResponse.fromJson(json as Map<String, dynamic>),
      );

      // (json as List).map((e) => MovieResponse.fromJson(e as Map<String, dynamic>)).toList()

      // if (response.statusCode == 200) {
      //   return BasePaginateResponse.fromJson(
      //     response.data,
      //     (json) => T.fromJson(json),
      //   );
      // } else {
      //   throw Exception('Failed to load data');
      // }
    } on DioException catch (e) {
      throw DioErrorHandler.handleDioError(e);
    }
  }

  // @override
  // Future<BasePaginateResponse<T>> getTopRatedMovies<T>() {
  //   throw UnimplementedError();
  // }
}