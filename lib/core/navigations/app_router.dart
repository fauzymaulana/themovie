import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_me/core/navigations/app_routes.dart';
import 'package:watch_me/dashboard/dashboard_screen.dart';
import 'package:watch_me/starter/splash/splash_screen.dart';

import 'enums/main_routes_enum.dart';
import 'provider/navigation_provider.dart';

/// Provider to provide the [GoRouter] instance
/// 
/// This provider sets up the routing configuration including:
/// - Route definitions
/// - Navigation logic
/// - Redirect rules based on application state
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.SPLASH,
    routes: [
      GoRoute(
        path: AppRoutes.SPLASH,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.DASHBOARD,
        builder: (context, state) => const DashboardScreen(),
      )
    ],
    redirect: (context, state) {
      final appState = ref.watch(navigationProvider);

      switch (appState) {
        case AppState.splash:
          return AppRoutes.SPLASH;
        case AppState.dashboard:
          return AppRoutes.DASHBOARD;
        default:
          return AppRoutes.SPLASH;
      }
    },
  );
});