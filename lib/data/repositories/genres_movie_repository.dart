import 'package:watch_me/data/entities/local/genres_isar.dart';
import 'package:watch_me/domain/entities/genres_entity.dart';

abstract class GenresMovieRepository {
  Future<List<GenreEntity>> fetchAllGenre();
  Future<List<GenresIsar>> getGenres();
}