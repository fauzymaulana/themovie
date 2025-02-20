import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/di/di_provider.dart';

import '../../../core/utilities/result_state.dart';
import '../../../domain/entities/base_paginate.dart';
import '../../../domain/entities/movie_entity.dart';
import 'movie_viewmodel.dart';

// final nowPlayingProvider = FutureProvider.autoDispose.family<ResultState<BasePaginate<MovieEntity>>?, int>((ref, page) async {
//   final usecase = ref.watch(getNowPlayingUsecaseProvider);
//   final result = await usecase.execute();
//   print("Now Playing: ${result.data?.results?.toList()}");
//   debugPrint("Now Playing: ${result.data?.results?.toList()}");
//   return result;
// });

final nowPlayingMovieProvider = StateNotifierProvider<MovieViewmodel, ResultState<BasePaginate<MovieEntity>>>(
  (ref) => MovieViewmodel(ref.watch(getNowPlayingUsecaseProvider)),
);
