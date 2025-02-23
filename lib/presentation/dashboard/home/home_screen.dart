import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/navigations/provider/navigation_provider.dart';
import 'package:watch_me/core/utilities/result_state.dart';
import 'package:watch_me/domain/entities/genres_entity.dart';
import 'package:watch_me/presentation/dashboard/home/genre_notifier.dart';
import 'package:watch_me/presentation/dashboard/splash/splash_provider.dart';
import 'package:watch_me/presentation/dashboard/widgets/item_movie_vertical.dart';
import 'package:watch_me/presentation/dashboard/widgets/movie_horizontal.dart';

import 'home_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  // @override
  // Widget build(BuildContext context, WidgetRef ref) {
  //   final nowPlayProvider = nowPlayingMovieProvider;
    

  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     body: SafeArea(
  //       child: SizedBox.expand(
  //         child: Column(
  //           children: [
  //             MovieHorizontal(
  //               title: "Now Playing",
  //               movieProvider: nowPlayProvider,
  //             ),

  //             ItemMovieVertical()
  //           ],
  //         )
  //       ),
  //     ),
  //   );
  // }
  
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  @override
  void initState() {
    super.initState();
    _fetchGenre();
  }

  Future<void> _fetchGenre() async {
    await Future.microtask(() => ref.read(getAllGenreStateNotifier.notifier).getAllGenre());
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayProvider = nowPlayingMovieProvider;
    final genreProv = getAllGenreStateNotifier;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              MovieHorizontal(
                title: "Now Playing",
                movieProvider: nowPlayProvider,
              ),

              ItemMovieVertical(),

              _buildd()
            ],
          )
        ),
      ),
    );
  }

  Widget _buildd() {
    return Consumer(
      builder: (context, ref, child) {
        final genProv = ref.watch(getAllGenreStateNotifier);

        if (genProv is Success<List<GenreEntity>>) {
          return Text("ISi datanya adalah : ${genProv.data.toList()}");
        } else if (genProv is Error<List<GenreEntity>>) {
          return Text("Error nya $genProv");
        } else {
          return Text("Elsenya ini $genProv");
        }
      },
    );
  }
  
}