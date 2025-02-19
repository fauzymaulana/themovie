import 'package:watch_me/data/data_source/remote_data_source.dart';
import 'package:watch_me/data/entities/remote/base_paginate_response.dart';
import 'package:watch_me/data/entities/remote/movie_response.dart';
import 'package:watch_me/data/repositories/now_playing_movie_repository.dart';

class NowPlayingMovieRepositoryImpl extends NowPlayingMovieRepository {

  final RemoteDataSource _remoteDataSource;

  NowPlayingMovieRepositoryImpl(this._remoteDataSource);

  @override
  Future<BasePaginateResponse<MovieResponse>> getNowPlayingApi() async {
    return await _remoteDataSource.getNowPlayingMovies();
  }
  
}