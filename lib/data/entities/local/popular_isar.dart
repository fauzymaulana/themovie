import 'package:isar/isar.dart';
import 'package:watch_me/data/entities/local/movie_isar.dart';

part 'popular_isar.g.dart';

@collection
class PopularIsar {
  Id id = Isar.autoIncrement;

  final int? page;
  final int? totalPage;

  final IsarLink<MovieIsar> movies = IsarLink<MovieIsar>();


  PopularIsar({
    this.page,
    this.totalPage
  });
}