import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/domain/usecases/get_now_playing_usecase.dart';

import '../../data/data_source/remote_data_source.dart';
import '../../data/repositories/now_playing_movie_repository.dart';
import '../../domain/repositories/now_playing_movie_repository_impl.dart';
import '../config/networking/dio_client.dart';

final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient();
});

final remoteDataSourceProvider = Provider<RemoteDataSource>((ref) {
  final dioClient = ref.read(dioClientProvider);
  return RemoteDataSourceImpl(dioClient);
});

final nowPlayingMovieRepositoryProvider = Provider<NowPlayingMovieRepository>((ref) {
  final remoteDataSource = ref.read(remoteDataSourceProvider);
  return NowPlayingMovieRepositoryImpl(remoteDataSource);
});

final getNowPlayingUsecaseProvider = Provider<GetNowPlayingUsecase>((ref) {
  final repository = ref.read(nowPlayingMovieRepositoryProvider);
  return GetNowPlayingUsecaseImpl(repository);
});