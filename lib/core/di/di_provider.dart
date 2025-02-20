import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/domain/usecases/get_genres_usecase.dart';
import 'package:watch_me/domain/usecases/get_now_playing_usecase.dart';

import '../../data/data_source/remote_data_source.dart';
import '../../data/repositories/genres_movie_repository.dart';
import '../../data/repositories/now_playing_movie_repository.dart';
import '../../domain/repositories/genres_movie_repository_impl.dart';
import '../../domain/repositories/now_playing_movie_repository_impl.dart';
import '../config/networking/dio_client.dart';

/// Injection Dio Client
final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient();
});

/// Injection Remote Data Source
final remoteDataSourceProvider = Provider<RemoteDataSource>((ref) {
  final dioClient = ref.read(dioClientProvider);
  return RemoteDataSourceImpl(dioClient);
});

/// Injection Repository
final nowPlayingMovieRepositoryProvider = Provider<NowPlayingMovieRepository>((ref) {
  final remoteDataSource = ref.read(remoteDataSourceProvider);
  return NowPlayingMovieRepositoryImpl(remoteDataSource);
});

final genresMovieRepositoryProvider = Provider<GenresMovieRepository>((ref) {
  final remoteDataSource = ref.read(remoteDataSourceProvider);
  return GenresMovieRepositoryImpl(remoteDataSource);
});

/// Injection Usecase
final getNowPlayingUsecaseProvider = Provider<GetNowPlayingUsecase>((ref) {
  final repository = ref.read(nowPlayingMovieRepositoryProvider);
  return GetNowPlayingUsecaseImpl(repository);
});

final getGenresUsecaseProvider = Provider<GetGenresUsecase>((ref) {
  final repository = ref.read(genresMovieRepositoryProvider);
  return GetGenresUsecaseImpl(repository);
});