import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/config/theme/app_colors.dart';
import 'package:watch_me/core/config/theme/app_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:watch_me/core/config/theme/app_typography.dart';
import 'package:watch_me/presentation/dashboard/widgets/circular_border_button.dart';

import '../../../core/utilities/result_state.dart';
import '../../../domain/entities/base_paginate.dart';
import '../../../domain/entities/movie_entity.dart';

class MovieHorizontal extends ConsumerWidget{
  final String title;
  final int page;
  final AutoDisposeFutureProviderFamily<ResultState<BasePaginate<MovieEntity>>?, int> provider;
  const MovieHorizontal({
    required this.title,
    this.page = 1,
    required this.provider,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final state = ref.watch(provider(page));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
              ),

              CircularBorderButton(
                paddingHorizontal: 10,
                paddingVertical: 10, 
                label: "Lihat semua", 
                textStyle: AppTypography.typeTypograph.labelSmall?.copyWith(
                  color: AppColors.primary
                ), 
                onPressed: () {}
              )
            ],
          ),
        ),
        SizedBox(height: 5.0),
        state.when(
          data: (resultState) {
            if (resultState is Success<BasePaginate<MovieEntity>>) {
              return SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: (resultState.data.results?.length ?? 0).clamp(0, 6),
                  itemBuilder: (context, index) {
                    final movie = resultState.data.results?[index];
                    return Container(
                      margin: EdgeInsets.only(left: 20.0),
                      width: 143.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: CachedNetworkImage(
                                imageUrl: 'https://image.tmdb.org/t/p/original${movie?.posterPath ?? ""}',
                                fit: BoxFit.cover,
                                height: 212,
                                width: 143,
                                placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) => Container(
                                  height: 212,
                                  width: 143,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.grey[300],
                                  ),
                                  child: Center(
                                    child: Icon(Icons.wifi_off, color: Colors.red, size: 40.0),
                                  ),
                                ),
                              ),
                              // child: Image
                              // .network(
                              //   'https://image.tmdb.org/t/p/original${movie?.posterPath ?? ""}',
                              //   fit: BoxFit.cover,
                              //   height: 212,
                              //   width: 143,
                              //   loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
                              //     ? child
                              //     : Center(
                              //         child: CircularProgressIndicator(
                              //           value: loadingProgress.expectedTotalBytes != null
                              //               ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                              //               : null,
                              //         ),
                              //     ),
                              //   errorBuilder: (context, error, stackTrace) => Container(
                              //     height: 212,
                              //     width: 143,
                              //     decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(10.0),
                              //       color: Colors.grey[300],
                              //     ),
                              //     child: Center(
                              //       child: Icon(Icons.wifi_off, color: Colors.red, size: 40.0),
                              //     ),
                              //   ),
                              // ),
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            movie?.title ?? "",
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            style: AppTypography.typeTypograph.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Row(
                            children: [
                              Icon(Icons.star, color: AppColors.yellow, size: 16.0),
                              SizedBox(width: 5.0),
                              Text(
                                "${movie?.voteAverage ?? 0.0}/10 IMDB",
                                style: AppTypography.typeTypograph.labelSmall?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[600]
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            }
            else if (resultState is Error<BasePaginate<MovieEntity>>) {
              return Center(child: Text(resultState.message.toString()));
            }
            else if (resultState is Loading<BasePaginate<MovieEntity>>) {
              return Center(child: CircularProgressIndicator());
            }
            else {
              return Center(child: Text("Unknown State"));
            }
          },
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text(error.toString())),
        ),
      ],
    );
  }
}