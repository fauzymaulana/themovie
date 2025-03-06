import 'package:isar/isar.dart';

part 'movie_isar.g.dart';

@collection
class MovieIsar {
  Id id = Isar.autoIncrement;

  @Index()
  final int? movieId;
  final String? title;
  final bool? isAdult;
  final String? overview;
  final String? posterPath;
  final String? backdropPath;
  final String? releaseDate;
  final double? voteAverage;
  final double? popularity;
  final List<String>? genres;
  final int? voteCount;

  MovieIsar({
    this.movieId,
    this.title,
    this.isAdult,
    this.overview,
    this.posterPath,
    this.backdropPath,
    this.releaseDate,
    this.voteAverage,
    this.popularity,
    this.genres,
    this.voteCount
  });

}