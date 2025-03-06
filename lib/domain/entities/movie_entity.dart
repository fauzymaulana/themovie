class MovieEntity {
  final int movieId;
  final bool adult;
  final String title;
  final String overview;
  final String? posterPath;
  final String? backdropPath;
  final String releaseDate;
  final double voteAverage;
  final double popularity;
  final List<String> genres;
  final int voteCount;

  MovieEntity({
    required this.movieId,
    required this.title,
    required this.adult,
    required this.overview,
    required this.popularity,
    required this.genres,
    this.posterPath,
    this.backdropPath,
    required this.releaseDate,
    required this.voteCount,
    required this.voteAverage,
  });
}