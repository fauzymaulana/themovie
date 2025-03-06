import 'package:watch_me/data/entities/local/movie_isar.dart';
import 'package:watch_me/data/entities/remote/movie_response.dart';

import '../entities/movie_entity.dart';

extension MovieMapper on MovieResponse {
  MovieEntity toMovieEntity(List<String> genres) {
    return MovieEntity(
      adult: adult,
      backdropPath: backdropPath,
      genres: genres,
      movieId: id,
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

extension MovieMapperIsar on MovieIsar {
  MovieIsar toMovieIsar() {
    return MovieIsar(
      movieId: movieId,
      title: title,
      isAdult: isAdult,
      overview: overview,
      posterPath: posterPath,
      backdropPath: backdropPath,
      releaseDate: releaseDate,
      voteAverage: voteAverage,
      voteCount: voteCount
    );
  }
}

extension MovieMapperEntity on MovieEntity {
  MovieIsar toMovieIsar() {
    return MovieIsar(
      popularity: popularity,
      movieId: movieId,
      title: title,
      isAdult: adult,
      overview: overview,
      posterPath: posterPath,
      backdropPath: backdropPath,
      releaseDate: releaseDate,
      voteAverage: voteAverage,
      voteCount: voteCount,
      genres: genres
    );
  }
}