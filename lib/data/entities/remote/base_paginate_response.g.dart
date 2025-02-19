// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_paginate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasePaginateResponse<T> _$BasePaginateResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BasePaginateResponse<T>(
      dates: json['dates'] == null
          ? null
          : DateResponse.fromJson(json['dates'] as Map<String, dynamic>),
      page: (json['page'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$BasePaginateResponseToJson<T>(
  BasePaginateResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': instance.results?.map(toJsonT).toList(),
    };
