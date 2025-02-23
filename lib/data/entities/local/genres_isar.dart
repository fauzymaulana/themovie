import 'package:isar/isar.dart';


part 'genres_isar.g.dart';

@collection
class GenresIsar {
  Id id = Isar.autoIncrement;

  @Index()
  final int? genreId;
  final String? name;

  GenresIsar({
    this.genreId,
    this.name,
  });
}
