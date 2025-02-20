import 'package:watch_me/domain/entities/movie_entity.dart';
import 'package:watch_me/domain/mapper/base_paginate_mapper.dart';
import 'package:watch_me/domain/mapper/date_mapper.dart';
import 'package:watch_me/domain/mapper/movie_mapper.dart';
import '../../core/utilities/result_state.dart';
import '../../data/repositories/now_playing_movie_repository.dart';
import '../entities/base_paginate.dart';

abstract class GetNowPlayingUsecase {
  Future<ResultState<BasePaginate<MovieEntity>>> execute();
}

class GetNowPlayingUsecaseImpl implements GetNowPlayingUsecase {
  final NowPlayingMovieRepository _nowPlayingMovieRepository;

  GetNowPlayingUsecaseImpl(this._nowPlayingMovieRepository);

  @override
  Future<ResultState<BasePaginate<MovieEntity>>> execute() async {
    try {
      final response = await _nowPlayingMovieRepository.getNowPlayingApi();
      final result =  BasePaginate<MovieEntity>(
        dates: response.dates?.toDateEntity(),
        page: response.page,
        totalResults: response.totalResults,
        totalPages: response.totalPages,
        results: response.results?.map((e) => e.toMovieEntity()).toList(),
      );

      return Success(result);
    } catch (e) {
      // throw e;
      return Error(e.toString());
    }
  }
}