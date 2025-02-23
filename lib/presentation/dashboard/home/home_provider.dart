import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/di/di_provider.dart';

import '../../../core/utilities/result_state.dart';
import '../../../domain/entities/base_paginate.dart';
import '../../../domain/entities/movie_entity.dart';
import 'movie_viewmodel.dart';


final nowPlayingMovieProvider = StateNotifierProvider<MovieViewmodel, ResultState<BasePaginate<MovieEntity>>>(
  (ref) => MovieViewmodel(ref.watch(getNowPlayingUsecaseProvider)),
);