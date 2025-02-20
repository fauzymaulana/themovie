import 'package:json_annotation/json_annotation.dart';

import 'genre_response.dart';

part 'genre_ids_response.g.dart';

@JsonSerializable()
class GenreIdsResponse {
  @JsonKey(name: 'genres')
  final List<GenreResponse> genres;

  GenreIdsResponse({
    required this.genres,
  });

  factory GenreIdsResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreIdsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenreIdsResponseToJson(this);
}