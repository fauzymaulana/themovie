import 'package:watch_me/data/entities/remote/movie_response.dart';

import '../entities/movie_entity.dart';

extension MovieMapper on MovieResponse {
  MovieEntity toMovieEntity() {
    return MovieEntity(
      adult: adult,
      backdropPath: backdropPath,
      genreIds: genreIds,
      id: id,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      title: title,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}