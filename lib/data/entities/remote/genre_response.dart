import 'package:json_annotation/json_annotation.dart';

part 'generated/genre_response.g.dart';

@JsonSerializable()
class GenreResponse {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  GenreResponse({
    required this.id,
    required this.name,
  });

  factory GenreResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenreResponseToJson(this);
  
}