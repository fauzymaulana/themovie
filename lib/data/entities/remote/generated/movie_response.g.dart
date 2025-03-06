// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) =>
    MovieResponse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      adult: json['adult'] as bool,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      genreIds: (json['genre_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      releaseDate: json['release_date'] as String,
      voteCount: (json['vote_count'] as num).toInt(),
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieResponseToJson(MovieResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'popularity': instance.popularity,
      'genre_ids': instance.genreIds,
      'vote_count': instance.voteCount,
    };
