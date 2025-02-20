import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExploreMovieScreen extends ConsumerWidget {
  final String movieId;
  const ExploreMovieScreen({
    super.key,
    required this.movieId
    });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Text("Expore Moview Scren $movieId")
            ],
          )
        ),
      ),
    );
  }
}