import 'package:isar/isar.dart';

part 'genres_isar.g.dart';

@collection
class GenresIsar {
  Id id = Isar.autoIncrement;

  IsarLinks<GenresIsar> genreList = IsarLinks<GenresIsar>();
}
