import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/config/theme/app_colors.dart';
import 'package:watch_me/core/config/theme/app_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:watch_me/core/config/theme/app_typography.dart';
import 'package:watch_me/presentation/dashboard/widgets/card_horizontal_movie.dart';
import 'package:watch_me/presentation/dashboard/widgets/circular_border_button.dart';
import 'package:watch_me/presentation/dashboard/widgets/rating_movie.dart';

import '../../../core/utilities/result_state.dart';
import '../../../domain/entities/base_paginate.dart';
import '../../../domain/entities/movie_entity.dart';
import '../home/movie_viewmodel.dart';

class MovieHorizontal extends ConsumerStatefulWidget{
  final String title;
  final int page;
  final Function()? onSeeAllPressed;
  // final AutoDisposeFutureProviderFamily<ResultState<BasePaginate<MovieEntity>>?, int> provider;
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

  // @override
  // Widget build(BuildContext context, WidgetRef ref) {

  //   final state = ref.watch(movieProvider);

  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               title,
  //               style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
  //             ),

  //             CircularBorderButton(
  //               paddingHorizontal: 10,
  //               paddingVertical: 10, 
  //               label: "Lihat semua", 
  //               textStyle: AppTypography.typeTypograph.labelSmall?.copyWith(
  //                 color: AppColors.primary
  //               ), 
  //               onPressed: () {}
  //             )
  //           ],
  //         ),
  //       ),
  //       SizedBox(height: 5.0),
  //       state.when(
  //         data: (resultState) {
  //           if (resultState is Success<BasePaginate<MovieEntity>>) {
  //             debugPrint("Data: ${resultState.data.results?.toList()}");
  //             return SizedBox(
  //               height: 250,
  //               child: ListView.builder(
  //                 scrollDirection: Axis.horizontal,
  //                 itemCount: (resultState.data.results?.length ?? 0).clamp(0, 6),
  //                 itemBuilder: (context, index) {
  //                   final movie = resultState.data.results?[index];
  //                   debugPrint("Movie: ${movie.toString()}");
  //                   return Container(
  //                     margin: EdgeInsets.only(left: 20.0),
  //                     width: 143.0,
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Expanded(
  //                           child: ClipRRect(
  //                             borderRadius: BorderRadius.circular(10.0),
  //                             child: CachedNetworkImage(
  //                               imageUrl: 'https://image.tmdb.org/t/p/original${movie?.posterPath ?? ""}',
  //                               fit: BoxFit.cover,
  //                               height: 212,
  //                               width: 143,
  //                               placeholder: (context, url) => Center(child: CircularProgressIndicator()),
  //                               errorWidget: (context, url, error) => Container(
  //                                 height: 212,
  //                                 width: 143,
  //                                 decoration: BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(10.0),
  //                                   color: Colors.grey[300],
  //                                 ),
  //                                 child: Center(
  //                                   child: Icon(Icons.wifi_off, color: Colors.red, size: 40.0),
  //                                 ),
  //                               ),
  //                             ),
  //                             // child: Image
  //                             // .network(
  //                             //   'https://image.tmdb.org/t/p/original${movie?.posterPath ?? ""}',
  //                             //   fit: BoxFit.cover,
  //                             //   height: 212,
  //                             //   width: 143,
  //                             //   loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
  //                             //     ? child
  //                             //     : Center(
  //                             //         child: CircularProgressIndicator(
  //                             //           value: loadingProgress.expectedTotalBytes != null
  //                             //               ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
  //                             //               : null,
  //                             //         ),
  //                             //     ),
  //                             //   errorBuilder: (context, error, stackTrace) => Container(
  //                             //     height: 212,
  //                             //     width: 143,
  //                             //     decoration: BoxDecoration(
  //                             //       borderRadius: BorderRadius.circular(10.0),
  //                             //       color: Colors.grey[300],
  //                             //     ),
  //                             //     child: Center(
  //                             //       child: Icon(Icons.wifi_off, color: Colors.red, size: 40.0),
  //                             //     ),
  //                             //   ),
  //                             // ),
  //                           ),
  //                         ),
  //                         SizedBox(height: 12.0),
  //                         Text(
  //                           movie?.title ?? "",
  //                           maxLines: 2,
  //                           textAlign: TextAlign.start,
  //                           style: AppTypography.typeTypograph.labelLarge?.copyWith(
  //                             fontWeight: FontWeight.bold
  //                           ),
  //                         ),
  //                         SizedBox(height: 6.0),
  //                         Row(
  //                           children: [
  //                             Icon(Icons.star, color: AppColors.yellow, size: 16.0),
  //                             SizedBox(width: 5.0),
  //                             Text(
  //                               "${movie?.voteAverage ?? 0.0}/10 IMDB",
  //                               style: AppTypography.typeTypograph.labelSmall?.copyWith(
  //                                 fontWeight: FontWeight.w400,
  //                                 color: Colors.grey[600]
  //                               ),
  //                             ),
  //                           ],
  //                         )
  //                       ],
  //                     ),
  //                   );
  //                 },
  //               ),
  //             );
  //           }
  //           else if (resultState is Error<BasePaginate<MovieEntity>>) {
  //             return Center(child: Text(resultState.message.toString()));
  //           }
  //           else if (resultState is Loading<BasePaginate<MovieEntity>>) {
  //             return Center(child: CircularProgressIndicator());
  //           }
  //           else {
  //             return Center(child: Text("Unknown State"));
  //           }
  //         },
  //         loading: () => Center(child: CircularProgressIndicator()),
  //         error: (error, stackTrace) => Center(child: Text(error.toString())),
  //       ),
  //     ],
  //   );
  // }
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



    // Widget content;

    // if (movieState is Success<BasePaginate<MovieEntity>>) {
    //   debugPrint("Data: ${movieState.data.results?.toList()}");

    //   content = SizedBox(
    //     height: 250,
    //     child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: (movieState.data.results?.length ?? 0).clamp(0, 6),
    //       itemBuilder: (context, index) {
    //         final movie = movieState.data.results?[index];
    //         debugPrint("Movie: ${movie.toString()}");

    //         return Container(
    //           margin: EdgeInsets.only(left: 20.0),
    //           width: 143.0,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Expanded(
    //                 child: ClipRRect(
    //                   borderRadius: BorderRadius.circular(10.0),
    //                   child: CachedNetworkImage(
    //                     imageUrl: 'https://image.tmdb.org/t/p/original${movie?.posterPath ?? ""}',
    //                     fit: BoxFit.cover,
    //                     height: 212,
    //                     width: 143,
    //                     placeholder: (context, url) => Center(child: CircularProgressIndicator()),
    //                     errorWidget: (context, url, error) => Container(
    //                       height: 212,
    //                       width: 143,
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(10.0),
    //                         color: Colors.grey[300],
    //                       ),
    //                       child: Center(
    //                         child: Icon(Icons.wifi_off, color: Colors.red, size: 40.0),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(height: 12.0),
    //               Text(
    //                 movie?.title ?? "",
    //                 maxLines: 2,
    //                 textAlign: TextAlign.start,
    //                 style: AppTypography.typeTypograph.labelLarge?.copyWith(
    //                   fontWeight: FontWeight.bold
    //                 ),
    //               ),
    //               SizedBox(height: 6.0),
    //               RatingMovie(rating: movie?.voteAverage ?? 0.0),
    //             ],
    //           ),
    //         );
    //       },
    //     ),
    //   );
    // } 
    // else if (movieState is Error<BasePaginate<MovieEntity>>) {
    //   content = Center(child: Text(movieState.message.toString()));
    // } 
    // else if (movieState is Loading<BasePaginate<MovieEntity>>) {
    //   content = Center(child: CircularProgressIndicator());
    // } 
    // else {
    //   content = Center(child: Text("Unknown State"));
    // }

    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Text(
    //             widget.title,
    //             style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
    //           ),
    //           CircularBorderButton(
    //             paddingHorizontal: 10,
    //             paddingVertical: 10, 
    //             label: "Lihat semua", 
    //             textStyle: AppTypography.typeTypograph.labelSmall?.copyWith(
    //               color: AppColors.primary
    //             ), 
    //             onPressed: () {}
    //           )
    //         ],
    //       ),
    //     ),
    //     SizedBox(height: 5.0),
    //     content, // Memastikan tidak ada return di tengah Column
    //   ],
    // );
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

        // return Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             widget.title,
        //             style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
        //           ),
        //           CircularBorderButton(
        //             paddingHorizontal: 10,
        //             paddingVertical: 10, 
        //             label: "Lihat semua", 
        //             textStyle: AppTypography.typeTypograph.labelSmall?.copyWith(
        //               color: AppColors.primary
        //             ), 
        //             onPressed: () {}
        //           )
        //         ],
        //       ),
        //     ),
        //     SizedBox(height: 5.0),
        //     content,
        //   ],
        // );
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
    debugPrint("Di klik ${movie.title}");
  }
  
}