import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/utilities/result_state.dart';
import 'package:watch_me/domain/entities/base_paginate.dart';

import '../../../domain/entities/movie_entity.dart';
import '../../../domain/usecases/get_now_playing_usecase.dart';

class MovieViewmodel extends StateNotifier<ResultState<BasePaginate<MovieEntity>>> {
  final GetNowPlayingUsecase _getNowPlayingUsecase;
  
  MovieViewmodel(this._getNowPlayingUsecase) : super(Loading());

  Future<void> getNowPlaying() async {
    state = Loading();
    final result = await _getNowPlayingUsecase.execute();
    state = result;
  }
}