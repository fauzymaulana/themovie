// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../genre_ids_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreIdsResponse _$GenreIdsResponseFromJson(Map<String, dynamic> json) =>
    GenreIdsResponse(
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenreIdsResponseToJson(GenreIdsResponse instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
