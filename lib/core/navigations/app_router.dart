import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_me/core/navigations/app_routes.dart';
import 'package:watch_me/dashboard/dashboard_screen.dart';
import 'package:watch_me/dashboard/home/home_screen.dart';
import 'package:watch_me/starter/splash/splash_screen.dart';

import '../../dashboard/bookmark/bookmark_screen.dart';
import 'dashboard_navigaton_provider.dart';
import 'navigation_provider.dart';

/// Provider to provide the [GoRouter] instance
/// 
/// This provider sets up the routing configuration including:
/// - Route definitions
/// - Navigation logic
/// - Redirect rules based on application state
final appRouterProvider = Provider<GoRouter>((ref) {
  final navigationNotifier = ref.watch(navigationProvider.notifier);
  final bottomNavState = ref.watch(bottomNavigationProvider);

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
        // routes: [
        //   GoRoute(
        //     path: 'home',
        //     builder: (context, state) => const HomeScreen(),
        //   ),
        //   GoRoute(
        //     path: 'bookmark',
        //     builder: (context, state) => const BookmarkScreen(),
        //   ),
        //   GoRoute(
        //     path: 'account',
        //     builder: (context, state) => const HomeScreen(),
        //   )
        // ]
      )
    ],
    redirect: (context, state) {
      final appState = ref.watch(navigationProvider);

      switch (appState) {
        case AppState.splash:
          return AppRoutes.SPLASH;
        case AppState.dashboard:
          // switch (bottomNavState) {
          //   case BottomNavState.home:
          //     return '${AppRoutes.DASHBOARD}/home';
          //   case BottomNavState.bookmark:
          //     return '${AppRoutes.DASHBOARD}/bookmark';
          //   case BottomNavState.account:
          //     return '${AppRoutes.DASHBOARD}/account';
          // }
          return AppRoutes.DASHBOARD;
        default:
          return AppRoutes.SPLASH;
      }
    },
  );
});