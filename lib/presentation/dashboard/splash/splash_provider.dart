import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/domain/entities/genres_entity.dart';
import 'package:watch_me/presentation/dashboard/splash/genres_viewmodel.dart';

import '../../../core/di/di_provider.dart';
import '../../../core/utilities/result_state.dart';

final getGenresProvider = StateNotifierProvider<GenresViewmodel, ResultState<GenresEntity>>(
  (ref) => GenresViewmodel(ref.watch(getGenresUsecaseProvider)),
);