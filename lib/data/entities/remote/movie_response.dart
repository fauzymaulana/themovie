import 'package:json_annotation/json_annotation.dart';

part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'adult')
  final bool adult;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'overview')
  final String overview;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  @JsonKey(name: 'release_date')
  final String releaseDate;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @JsonKey(name: 'popularity')
  final double popularity;

  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;

  @JsonKey(name: 'vote_count')
  final int voteCount;

  MovieResponse({
    required this.id,
    required this.title,
    required this.adult,
    required this.overview,
    required this.popularity,
    required this.genreIds,
    this.posterPath,
    this.backdropPath,
    required this.releaseDate,
    required this.voteCount,
    required this.voteAverage,
  });

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
  
}