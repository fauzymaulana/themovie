import 'package:watch_me/data/data_source/remote_data_source.dart';
import 'package:watch_me/data/entities/remote/genre_ids_response.dart';
import 'package:watch_me/data/repositories/genres_movie_repository.dart';

class GenresMovieRepositoryImpl extends GenresMovieRepository {
  final RemoteDataSource _remoteDataSource;

  GenresMovieRepositoryImpl(this._remoteDataSource);

  @override
  Future<GenreIdsResponse> getGenres() async {
    return await _remoteDataSource.getGenres();
  }
}