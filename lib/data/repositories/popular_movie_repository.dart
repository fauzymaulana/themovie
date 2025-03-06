import 'package:watch_me/data/entities/remote/base_paginate_response.dart';
import 'package:watch_me/data/entities/remote/movie_response.dart';
import 'package:watch_me/domain/entities/movie_entity.dart';

abstract class PopularMovieRepository {
  Future<List<MovieEntity>> fetchPopular({required int page});
}