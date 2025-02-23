import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_me/core/config/theme/app_colors.dart';
import 'package:watch_me/core/config/theme/app_typography.dart';
import 'package:watch_me/core/navigations/app_routes.dart';
import 'package:watch_me/presentation/dashboard/widgets/card_horizontal_movie.dart';
import 'package:watch_me/presentation/dashboard/widgets/circular_border_button.dart';

import '../../../core/utilities/result_state.dart';
import '../../../domain/entities/base_paginate.dart';
import '../../../domain/entities/movie_entity.dart';
import '../home/movie_viewmodel.dart';

class MovieHorizontal extends ConsumerStatefulWidget{
  final String title;
  final int page;
  final Function()? onSeeAllPressed;
  final StateNotifierProvider<MovieViewmodel, ResultState<BasePaginate<MovieEntity>>> movieProvider;
  const MovieHorizontal({
    required this.title,
    this.page = 1,
    this.onSeeAllPressed,
    required this.movieProvider,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    
    return _MovieHorizontalState();
  }
}

class _MovieHorizontalState extends ConsumerState<MovieHorizontal> {

  @override
  void initState() {
    super.initState();
    _fetchNowPlaying();
  }

  Future<void> _fetchNowPlaying() async {
    if (!mounted) return;
    await Future.microtask(
      () => ref.read(widget.movieProvider.notifier).getNowPlaying()
    );
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(),
        SizedBox(height: 16.0),
        _buildMovieList(),
      ],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
          ),
          CircularBorderButton(
            paddingHorizontal: 10,
            paddingVertical: 10, 
            label: "Lihat semua", 
            textStyle: AppTypography.typeTypograph.labelSmall?.copyWith(
              color: AppColors.primary
            ), 
            onPressed: () {
              debugPrint("Lihat semua di klik");
            }
          )
        ],
      ),
    );
  }

  Widget _buildMovieList() {
    return Consumer(
      builder: (context, ref, child) {
        final movieState = ref.watch(widget.movieProvider);

        if (movieState is Success<BasePaginate<MovieEntity>>) {
          return _buildSuccessContent(movieState.data);
        } 
        else if (movieState is Error<BasePaginate<MovieEntity>>) {
          return Center(child: Text(movieState.message.toString()));
        } 
        else if (movieState is Loading<BasePaginate<MovieEntity>>) {
          return Center(child: CircularProgressIndicator());
        } 
        else {
          return Center(child: Text("Unknown State"));
        }
      },
    );
  }

  Widget _buildSuccessContent(BasePaginate<MovieEntity> data) {
    final movies = data.results;
    if (movies == null || movies.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 300,
      child: ListView.builder(
        addAutomaticKeepAlives: true, // operator to keep alives state when it is not visible on the screen.
        key: PageStorageKey('horizontal-list'),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: movies.length.clamp(0, 6),
        itemBuilder: (context, index) {
          final movie = movies[index];
          return CardHorizontalMovie(
            movie: movie,
            onTap: (movie){
              _onMovieTapped(movie);
            },
          );
        },
      ),
    );
  }

  void _onMovieTapped(MovieEntity movie) {
    GoRouter.of(context).go('${AppRoutes.DETAIL}/${movie.id.toString()}');
  }
  
}