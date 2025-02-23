import 'package:watch_me/data/entities/local/genres_isar.dart';
import 'package:watch_me/domain/entities/genres_entity.dart';

import '../entities/remote/genre_ids_response.dart';

abstract class GenresMovieRepository {
  Future<GenreIdsResponse> fetchGenres();
  Future<List<GenreEntity>> fetchAllGenre();
  Future<List<GenresIsar>> getGenres();
}