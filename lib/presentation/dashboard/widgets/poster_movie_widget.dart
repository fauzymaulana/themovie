import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PosterMovieWidget extends ConsumerWidget {
  final String? imageUrl;
  final double width;
  final double height;

  const PosterMovieWidget({
    super.key,
    this.imageUrl,
    this.width = 143,
    this.height = 212,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return _buildPlaceholder();
    }

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          imageUrl: 'https://image.tmdb.org/t/p/original${(imageUrl ?? "")}',
          fit: BoxFit.cover,
          placeholder: (context, url) => _buildLoadingIndicator(),
          errorWidget: (context, url, error) => _buildErrorIndicator(),
        ),
      ),
    );
    
  }

  Widget _buildPlaceholder() {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Icon(
        Icons.image_not_supported,
        size: 50,
        color: Colors.grey[600],
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildErrorIndicator() {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Icon(
        Icons.error,
        size: 50,
        color: Colors.grey[600],
      ),
    );
  }
}