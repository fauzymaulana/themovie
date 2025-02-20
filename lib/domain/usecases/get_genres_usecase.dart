import 'package:watch_me/domain/mapper/genres_mapper.dart';

import '../../core/utilities/result_state.dart';
import '../../data/repositories/genres_movie_repository.dart';
import '../entities/genres_entity.dart';

abstract class GetGenresUsecase {
  Future<ResultState<GenresEntity>> execute();
}

class GetGenresUsecaseImpl implements GetGenresUsecase {
  final GenresMovieRepository _genresMovieRepository;

  GetGenresUsecaseImpl(this._genresMovieRepository);

  @override
  Future<ResultState<GenresEntity>> execute() async {
    try {
      final response = await _genresMovieRepository.getGenres();
      final result = GenresEntity(
        genres: response.genres.map((e) => e.toGenreEntities()).toList(),
      );

      return Success(result);
    } catch (e) {
      return Error(e.toString());
    }
  }
}