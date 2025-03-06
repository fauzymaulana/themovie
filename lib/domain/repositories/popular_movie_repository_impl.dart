import 'package:watch_me/data/data_source/movie_local_data_source.dart';
import 'package:watch_me/data/data_source/remote_data_source.dart';
import 'package:watch_me/data/entities/remote/base_paginate_response.dart';

import 'package:watch_me/data/entities/remote/movie_response.dart';
import 'package:watch_me/domain/entities/movie_entity.dart';

import '../../data/repositories/popular_movie_repository.dart';

class PopularMovieRepositoryImpl extends PopularMovieRepository {
  final RemoteDataSource _remoteDataSource;
  final MovieLocalDataSource _localDataSource;

  PopularMovieRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<List<MovieEntity>> fetchPopular({required int page}) {
    try {
      
    } catch (e) {
      final movieDb = await _localDataSource.getPopular()
      
    }
  }
  // @override
  // Future<BasePaginateResponse<MovieResponse>> getPopular({required int page}) async {
  //   return await _remoteDataSource.getPopularMovies(page: page);
  // }
  
}