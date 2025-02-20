import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/domain/entities/genres_entity.dart';
import 'package:watch_me/domain/usecases/get_genres_usecase.dart';

import '../../../core/utilities/result_state.dart';

class GenresViewmodel extends StateNotifier<ResultState<GenresEntity>> {
  final GetGenresUsecase _getGenresUsecase;

  GenresViewmodel(this._getGenresUsecase) : super(Loading());

  Future<void> getGenres() async {
    state = Loading();
    final result = await _getGenresUsecase.execute();
    debugPrint("Genres: ${result.data?.genres?.toList()}");
    state = result;
  }
}