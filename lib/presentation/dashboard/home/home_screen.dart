import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/presentation/dashboard/widgets/movie_horizontal.dart';

import 'home_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nowPlayProvider = nowPlayingProvider;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              MovieHorizontal(
                title: "Now Playing",
                provider: nowPlayProvider,
              ),
            ],
          )
        ),
      ),
    );
  }
}