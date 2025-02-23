import 'package:watch_me/data/data_source/movie_local_data_source.dart';
import 'package:watch_me/data/data_source/remote_data_source.dart';
import 'package:watch_me/data/entities/local/genres_isar.dart';
import 'package:watch_me/data/entities/remote/genre_ids_response.dart';
import 'package:watch_me/data/repositories/genres_movie_repository.dart';
import 'package:watch_me/domain/entities/genres_entity.dart';
import 'package:watch_me/domain/mapper/genres_mapper.dart';

class GenresMovieRepositoryImpl extends GenresMovieRepository {
  final RemoteDataSource _remoteDataSource;
  final MovieLocalDataSource _movieLocalDataSource;

  GenresMovieRepositoryImpl(this._remoteDataSource, this._movieLocalDataSource);

  @override
  Future<GenreIdsResponse> fetchGenres() async {
    // return await _remoteDataSource.getGenres();
    try {
      // final genresDb = await _movieLocalDataSource.getGenres();

      // if (genresDb.isNotEmpty) {
      //   return genresDb
      // }

      final genres = await _remoteDataSource.getGenres();
      _movieLocalDataSource.saveGenres(genres.genres);

      return genres;
    } catch (e) {
      throw Exception("Error fetching and caching genres: $e");
    }
  }

  @override
  Future<List<GenresIsar>> getGenres() async {
    return await _movieLocalDataSource.getGenres();
  }

  @override
  Future<List<GenreEntity>> fetchAllGenre() async {
    try {
      final genresDb = await _movieLocalDataSource.getGenres();

      if (genresDb.isNotEmpty) {
        return genresDb.toGenreEntityList();
      }

      try {
        final genres = await _remoteDataSource.getGenres();
        _movieLocalDataSource.saveGenres(genres.genres);

        return genres.toGenreListEntity();
      } catch (e) {
        throw Exception("Error fetchAllGenre genres: $e");
      }
    } catch (e) {
      throw Exception("Error fetchAllGenre genres: $e");
    }
  }
}
