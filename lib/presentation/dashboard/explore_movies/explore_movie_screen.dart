import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_me/core/navigations/app_routes.dart';

class ExploreMovieScreen extends ConsumerStatefulWidget {
  final String movieId;
  const ExploreMovieScreen({super.key, required this.movieId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ExploreMovieScreenState();
  }
}

class _ExploreMovieScreenState extends ConsumerState<ExploreMovieScreen> {
  DateTime? _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        if (didPop) {
          return;
        }

        final currentLocation = GoRouter.of(context).location;

        // Jika bukan di root dashboard, biarkan default back behavior
        if (currentLocation != '/dashboard') {
          context.go('/dashboard');
          return;
        }

        // Double tap to exit di halaman dashboard
        final now = DateTime.now();
        if (_lastPressedAt == null ||
            now.difference(_lastPressedAt!) > const Duration(seconds: 2)) {
          _lastPressedAt = now;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Tekan sekali lagi untuk keluar'),
              duration: Duration(seconds: 2),
            ),
          );
          return;
        }

        SystemNavigator.pop();
      },
      child: Scaffold(
        backgroundColor: Colors.red[200],
        body: SafeArea(
          child: SizedBox.expand(
              child: Column(
            children: [
              Text("Expore Moview Scren ${widget.movieId}"),
              OutlinedButton(
                  onPressed: () {
                    GoRouter.of(context).go(AppRoutes.DASHBOARD);
                  },
                  child: Text("Kembali"))
            ],
          )),
        ),
      ),
    );
  }
}
