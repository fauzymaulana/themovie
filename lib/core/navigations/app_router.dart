import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_me/core/navigations/animations/slider_page_transition.dart';
import 'package:watch_me/core/navigations/app_routes.dart';
import 'package:watch_me/core/navigations/enums/slider_directions_enum.dart';
import 'package:watch_me/presentation/dashboard/bookmark/bookmark_screen.dart';
import 'package:watch_me/presentation/dashboard/dashboard_screen.dart';
import 'package:watch_me/presentation/dashboard/explore_movies/explore_movie_screen.dart';
import 'package:watch_me/presentation/dashboard/home/home_screen.dart';
import 'package:watch_me/presentation/dashboard/splash/splash_screen.dart';

import 'enums/main_routes_enum.dart';
import 'provider/navigation_provider.dart';

/// Provider to provide the [GoRouter] instance
///
/// This provider sets up the routing configuration including:
/// - Route definitions
/// - Navigation logic
/// - Redirect rules based on application state
/// 
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();
final appRouterProvider = Provider<GoRouter>((ref) {
  final appState = ref.watch(navigationProvider);
  // final movieId = ref.read(navigationProvider.notifier).movieId;

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
                // pageBuilder: (context, state) {
                //   return SlidePageTransition(
                //     child: const HomeScreen(), 
                //     direction: SlideDirection.backward,
                //     key: state.pageKey
                //   );
                // },
                builder: (context, state) => const HomeScreen(),
                // routes: [
                //   GoRoute(
                //     path: 'detail/:movieId',
                //     pageBuilder: (context, state) {
                //       final movieId = state.pathParameters['movieId'];
                //       return EnterExitRouteTransition(
                //         enterPage: ExploreMovieScreen(movieId: movieId ?? ""), 
                //         exitPage: const HomeScreen(),
                //         key: state.pageKey
                //       );
                //       // return SlidePageTransition(
                //       //   child: ExploreMovieScreen(movieId: movieId ?? ""),
                //       //   direction: SlideDirection.forward,
                //       //   key: state.pageKey,
                //       // );
                //     }
                //   )
                // ]
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
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
                      final movieId = state.pathParameters['movieId'];
                      return EnterExitRouteTransition(
                        enterPage: ExploreMovieScreen(movieId: movieId ?? ""), 
                        exitPage: const HomeScreen(),
                        key: state.pageKey
                      );
                      // return SlidePageTransition(
                      //   child: ExploreMovieScreen(movieId: movieId ?? ""),
                      //   direction: SlideDirection.forward,
                      //   key: state.pageKey,
                      // );
                    }
          // pageBuilder: (context, state) {
          //   final _movieId = state.pathParameters['movieId'];

          //   // return SlidePageTransition(
          //   //   child: ExploreMovieScreen(movieId: _movieId ?? ""), 
          //   //   direction: SlideDirection.forward,
          //   //   key: state.pageKey
          //   // );

          //   return CustomTransitionPage(
          //     key: state.pageKey,
          //     child: ExploreMovieScreen(
          //     movieId: _movieId ?? "",
          //   ), 
          //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
          //       const begin = Offset(1.0, 0.0);
          //       const end = Offset.zero;
          //       const curve = Curves.easeInOut;
                

          //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          //       var offsetAnimation = animation.drive(tween);

          //       return SlideTransition(position: offsetAnimation, child: child);
          //     },
          //     );
          // },
          // builder: (context, state) {
          //   final _movieId = state.pathParameters['movieId'];
          //   return ExploreMovieScreen(
          //     movieId: _movieId ?? "",
          //   );
          // })
      )
    ],
    // redirect: (context, state) {
    //   switch (appState) {
    //     case AppState.splash:
    //       return AppRoutes.SPLASH;
    //     case AppState.dashboard:
    //       return AppRoutes.DASHBOARD;
    //     case AppState.detail:
    //       return movieId != null
    //           ? "${AppRoutes.DETAIL}/$movieId"
    //           : AppRoutes.DASHBOARD;
    //     default:
    //       return AppRoutes.SPLASH;
    //   }
    // },
  );
});
