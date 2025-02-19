import 'date_entity.dart';

class BasePaginate<T> {
  final DateEntity? dates;
  final int? page;
  final int? totalResults;
  final int? totalPages;
  final List<T>? results;


  BasePaginate({
    this.dates, 
    this.page,
    this.totalResults, 
    this.totalPages, 
    this.results
  });
}
