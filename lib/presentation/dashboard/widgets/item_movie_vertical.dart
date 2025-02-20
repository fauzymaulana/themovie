import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/config/theme/app_typography.dart';

import '../../../core/config/theme/app_colors.dart';

class ItemMovieVertical extends ConsumerWidget {
  const ItemMovieVertical({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: CachedNetworkImage(
            imageUrl: 'https://image.tmdb.org/t/p/original/pzIddUEMWhWzfvLI3TwxUG2wGoi.jpg',
            fit: BoxFit.cover,
            height: 120,
            width: 85,
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Container(
              height: 120,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[300],
              ),
              child: Center(
                child: Icon(Icons.wifi_off, color: Colors.red, size: 40.0),
              ),
            ),
          ),
        ),

        SizedBox(width: 16.0),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "movie?.titleggf",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.typeTypograph.labelLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Row(
              children: [
                Icon(Icons.star, color: AppColors.yellow, size: 16.0),
                SizedBox(width: 5.0),
                Text(
                  "movie?.voteAverage ?? 0.0/10 IMDgB",
                  style: AppTypography.typeTypograph.labelSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600]
                  ),
                ),
              ],
            ),
          ],
        )
      ], 
    );
  }
}