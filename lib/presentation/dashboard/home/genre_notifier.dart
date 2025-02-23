import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/domain/usecases/get_all_genre_usecase.dart';

import '../../../core/di/di_provider.dart';
import '../../../core/utilities/result_state.dart';
import '../../../domain/entities/genres_entity.dart';


final getAllGenreStateNotifier = StateNotifierProvider<GenreNotifier, ResultState<List<GenreEntity>>>(
  (ref) => GenreNotifier(ref.watch(getAllGenreUsecaseProvider))
);

class GenreNotifier extends StateNotifier<ResultState<List<GenreEntity>>> {
  final GetAllGenreUsecase _getAllGenreUsecase;

  GenreNotifier(this._getAllGenreUsecase) : super(Loading());

  Future<void> getAllGenre() async {
    state = Loading();
    final result = await _getAllGenreUsecase.execute();
    state = result;
  }

}