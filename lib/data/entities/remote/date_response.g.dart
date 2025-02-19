// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateResponse _$DateResponseFromJson(Map<String, dynamic> json) => DateResponse(
      max: json['maximum'] as String,
      min: json['minimum'] as String,
    );

Map<String, dynamic> _$DateResponseToJson(DateResponse instance) =>
    <String, dynamic>{
      'maximum': instance.max,
      'minimum': instance.min,
    };
