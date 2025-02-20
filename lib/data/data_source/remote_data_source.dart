import 'package:dio/dio.dart';
import 'package:watch_me/core/config/networking/api_path.dart';
import 'package:watch_me/core/config/networking/dio_error_handler.dart';
import 'package:watch_me/data/entities/remote/base_paginate_response.dart';
import 'package:watch_me/data/entities/remote/genre_ids_response.dart';
import 'package:watch_me/data/entities/remote/movie_response.dart';

import '../../core/config/networking/dio_client.dart';

abstract class RemoteDataSource {
  Future<BasePaginateResponse<MovieResponse>> getNowPlayingMovies<T>();
  Future<GenreIdsResponse> getGenres();
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

    } on DioException catch (e) {
      throw DioErrorHandler.handleDioError(e);
    }
  }

  @override
  Future<GenreIdsResponse> getGenres() async {
    try {
      final response = await _dioClient.dio.get(ApiPath.GENRES);

      final dynamic data = response.data;

      return GenreIdsResponse.fromJson(data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw DioErrorHandler.handleDioError(e);
    }
  }

  // @override
  // Future<BasePaginateResponse<T>> getTopRatedMovies<T>() {
  //   throw UnimplementedError();
  // }
}