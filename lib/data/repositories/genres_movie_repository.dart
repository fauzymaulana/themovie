import '../entities/remote/genre_ids_response.dart';

abstract class GenresMovieRepository {
  Future<GenreIdsResponse> getGenres();
}