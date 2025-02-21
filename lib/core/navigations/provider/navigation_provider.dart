import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_me/core/navigations/app_routes.dart';

import '../enums/main_routes_enum.dart';

/// Notifier to handle the navigation state
/// 
/// This notifier will be used to change the app state
/// and navigate to the respective screen
class NavigationNotifier extends StateNotifier<void> {
  // String? _movieId;
  /// Creates a [NavigationNotifier] with the initial state as [AppState.splash]
  NavigationNotifier() : super(null);

  /// Navigates to the dashboard screen
  /// 
  /// This method will change the app state to [AppState.dashboard]
  /// and navigate to the dashboard screen
  // void navigateToDashboard() {
  //   state = AppState.dashboard;
  // }

  void navigateToDetail(BuildContext context, String id) {
    // _movieId = id;
    GoRouter.of(context).go('${AppRoutes.DETAIL}/$id');
    
  }

  // void goBack(BuildContext context) {
  //   if (GoRouter.of(context).canPop()) {
  //     GoRouter.of(context).pop();
  //   } else {
  //     state = AppState.dashboard; // Jika tidak bisa pop, kembali ke dashboard
  //   }
  // }

  // bool onBackPressed() {
  //   if (state == AppState.detail) {
  //     navigateToDashboard();
  //     return true;
  //   }
  //   return false;
  // }

  // String? get movieId => _movieId;
}

/// Provider to provide the [NavigationNotifier] instance
final navigationProvider = Provider((ref) => NavigationNotifier());