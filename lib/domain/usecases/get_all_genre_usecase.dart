import 'package:watch_me/core/utilities/result_state.dart';
import 'package:watch_me/data/repositories/genres_movie_repository.dart';
import 'package:watch_me/domain/entities/genres_entity.dart';

abstract class GetAllGenreUsecase {
  Future<ResultState<List<GenreEntity>>> execute();
}

class GetAllGenreUsecaseImpl implements GetAllGenreUsecase {
  final GenresMovieRepository _genresMovieRepository;

  GetAllGenreUsecaseImpl(this._genresMovieRepository);
  @override
  Future<ResultState<List<GenreEntity>>> execute() async {
    try {
      final response = await _genresMovieRepository.fetchAllGenre();

      return Success(response);
    } catch (e) {
      return Error(e.toString());
    }
  }
}