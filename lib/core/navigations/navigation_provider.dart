import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Enum to represent the app states for navigation
enum AppState { splash, dashboard }

class NavigationNotifier extends StateNotifier<AppState> {
  NavigationNotifier() : super(AppState.splash);

  void navigateToDashboard() {
    state = AppState.dashboard;
  }
}

final navigationProvider = StateNotifierProvider<NavigationNotifier, AppState>((ref) => NavigationNotifier());