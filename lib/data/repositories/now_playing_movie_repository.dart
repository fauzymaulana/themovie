import 'package:watch_me/data/entities/remote/base_paginate_response.dart';
import 'package:watch_me/data/entities/remote/movie_response.dart';

abstract class NowPlayingMovieRepository {
  Future<BasePaginateResponse<MovieResponse>> getNowPlayingApi();
}