import 'package:json_annotation/json_annotation.dart';
import 'package:watch_me/data/entities/remote/date_response.dart';

part 'generated/base_paginate_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BasePaginateResponse<T> 
{
  @JsonKey(name: 'dates')
  final DateResponse? dates;

  final int? page;

  @JsonKey(name: 'total_results')
  final int? totalResults;
  
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  
  final List<T>? results;

  BasePaginateResponse({
    this.dates,
    this.page,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory BasePaginateResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BasePaginateResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BasePaginateResponseToJson(this, toJsonT);
}