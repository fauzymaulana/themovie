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
  /// Creates a [NavigationNotifier] with the initial state as [AppState.splash]
  NavigationNotifier() : super(null);

  void navigateToDetail(BuildContext context, String id) {
    GoRouter.of(context).go('${AppRoutes.DETAIL}/$id');
    
  }

}

/// Provider to provide the [NavigationNotifier] instance
final navigationProvider = Provider((ref) => NavigationNotifier());