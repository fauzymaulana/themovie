import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_me/core/navigations/animations/slider_page_transition.dart';
import 'package:watch_me/core/navigations/app_routes.dart';
import 'package:watch_me/presentation/dashboard/bookmark/bookmark_screen.dart';
import 'package:watch_me/presentation/dashboard/dashboard_screen.dart';
import 'package:watch_me/presentation/dashboard/explore_movies/explore_movie_screen.dart';
import 'package:watch_me/presentation/dashboard/home/home_screen.dart';
import 'package:watch_me/presentation/dashboard/splash/splash_screen.dart';

/// Provider to provide the [GoRouter] instance
///
/// This provider sets up the routing configuration including:
/// - Route definitions
/// - Navigation logic
/// - Redirect rules based on application state
///
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.SPLASH,
    debugLogDiagnostics: true,
    routerNeglect: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: AppRoutes.SPLASH,
        builder: (context, state) => const SplashScreen(),
      ),
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) =>
              DashboardScreen(child: navigationShell),
          branches: [
            StatefulShellBranch(routes: [
              GoRoute(
                path: AppRoutes.DASHBOARD,
                builder: (context, state) => const HomeScreen(),
              )
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                path: AppRoutes.BOOKMARK,
                builder: (context, state) => const BookmarkScreen(),
              )
            ]),
          ]),
      GoRoute(
          path: '${AppRoutes.DETAIL}/:movieId',
          pageBuilder: (context, state) {
            final movieId = state.pathParameters['movieId'];
            return EnterExitRouteTransition(
                enterPage: ExploreMovieScreen(movieId: movieId ?? ""),
                exitPage: const HomeScreen(),
                key: state.pageKey);
          })
    ],
  );
});
