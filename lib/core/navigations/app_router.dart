import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_me/core/navigations/app_routes.dart';
import 'package:watch_me/presentation/dashboard/dashboard_screen.dart';
import 'package:watch_me/presentation/dashboard/explore_movies/explore_movie_screen.dart';
import 'package:watch_me/presentation/dashboard/splash/splash_screen.dart';

import 'enums/main_routes_enum.dart';
import 'provider/navigation_provider.dart';

/// Provider to provide the [GoRouter] instance
///
/// This provider sets up the routing configuration including:
/// - Route definitions
/// - Navigation logic
/// - Redirect rules based on application state
final appRouterProvider = Provider<GoRouter>((ref) {
  final appState = ref.watch(navigationProvider);
  final movieId = ref.read(navigationProvider.notifier).movieId;

  return GoRouter(
    initialLocation: AppRoutes.SPLASH,
    debugLogDiagnostics: true,
    routerNeglect: true,
    navigatorKey: GlobalKey<NavigatorState>(),
    routes: [
      GoRoute(
        path: AppRoutes.SPLASH,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.DASHBOARD,
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
          path: '${AppRoutes.DETAIL}/:movieId',
          builder: (context, state) {
            final _movieId = state.pathParameters['movieId'];
            return ExploreMovieScreen(
              movieId: _movieId ?? "",
            );
          })
    ],
    redirect: (context, state) {
      switch (appState) {
        case AppState.splash:
          return AppRoutes.SPLASH;
        case AppState.dashboard:
          return AppRoutes.DASHBOARD;
        case AppState.detail:
          return movieId != null
              ? "${AppRoutes.DETAIL}/$movieId"
              : AppRoutes.DASHBOARD;
        default:
          return AppRoutes.SPLASH;
      }
    },
  );
});
