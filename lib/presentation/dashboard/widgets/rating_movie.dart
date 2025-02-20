import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/config/theme/app_colors.dart';
import '../../../core/config/theme/app_typography.dart';

class RatingMovie extends ConsumerWidget {
  final double rating;
  
  const RatingMovie({
    super.key,
    required this.rating
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Icon(Icons.star, color: AppColors.yellow, size: 16.0),
        SizedBox(width: 5.0),
        Text(
          "$double/10 IMDB",
          style: AppTypography.typeTypograph.labelSmall?.copyWith(
            fontWeight: FontWeight.w400,
            color: Colors.grey[600]
          ),
        ),
      ],
    );
  }
}