import 'package:flutter/material.dart';
import 'package:watch_me/domain/entities/movie_entity.dart';
import 'package:watch_me/presentation/dashboard/widgets/poster_movie_widget.dart';
import 'package:watch_me/presentation/dashboard/widgets/rating_movie.dart';

class CardHorizontalMovie extends StatelessWidget {
  final MovieEntity movie;
  final Function(MovieEntity)? onTap;
  
  const CardHorizontalMovie({
    super.key,
    required this.movie,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(movie),
      child: Container(
        width: 143,
        height: 300,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPoster(),
            const SizedBox(height: 12),
            _buildTitle(),
            const SizedBox(height: 6),
            _buildRating()
          ],
        ),
      ),
    );
  }

  Widget _buildPoster() {
    return PosterMovieWidget(
      imageUrl: movie.posterPath,
      width: 143,
      height: 212,
    );
  }

  Widget _buildRating() {
    return RatingMovie(rating: movie.voteAverage);
  }

  Widget _buildTitle() {
    return Text(
      movie.title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}