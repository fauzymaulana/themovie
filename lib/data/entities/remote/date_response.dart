import 'package:json_annotation/json_annotation.dart';

part 'date_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class DateResponse {
  @JsonKey(name: 'maximum')
  final String max;

  @JsonKey(name: 'minimum')
  final String min;

  DateResponse({
    required this.max,
    required this.min
  });

  factory DateResponse.fromJson(Map<String, dynamic> json) =>
      _$DateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DateResponseToJson(this);
}