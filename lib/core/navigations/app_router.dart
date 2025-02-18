import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_me/core/navigations/app_routes.dart';
import 'package:watch_me/dashboard/home/home_screen.dart';
import 'package:watch_me/starter/splash/splash_screen.dart';

import 'navigation_provider.dart';

/// Provider to provide the [GoRouter] instance
/// 
/// This provider sets up the routing configuration including:
/// - Route definitions
/// - Navigation logic
/// - Redirect rules based on application state
final appRouterProvider = Provider<GoRouter>((ref) {
  final navigationNotifier = ref.watch(navigationProvider.notifier);

  return GoRouter(
    initialLocation: AppRoutes.SPLASH,
    routes: [
      GoRoute(
        path: AppRoutes.SPLASH,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.DASHBOARD,
        builder: (context, state) => const HomeScreen(),
      )
    ],
    redirect: (context, state) {
      final appState = ref.watch(navigationProvider);
      final isInSplash = state.matchedLocation == AppRoutes.SPLASH;

      switch (appState) {
        case AppState.splash:
          return isInSplash ? null : AppRoutes.SPLASH;
        case AppState.dashboard:
          return AppRoutes.DASHBOARD;
        default:
          return AppRoutes.SPLASH;
      }
    },
  );
});