import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Enum to represent the app states for navigation
enum AppState { splash, dashboard }

/// Notifier to handle the navigation state
/// 
/// This notifier will be used to change the app state
/// and navigate to the respective screen
class NavigationNotifier extends StateNotifier<AppState> {
  /// Creates a [NavigationNotifier] with the initial state as [AppState.splash]
  NavigationNotifier() : super(AppState.splash);

  /// Navigates to the dashboard screen
  /// 
  /// This method will change the app state to [AppState.dashboard]
  /// and navigate to the dashboard screen
  void navigateToDashboard() {
    state = AppState.dashboard;
  }
}

/// Provider to provide the [NavigationNotifier] instance
final navigationProvider = StateNotifierProvider<NavigationNotifier, AppState>((ref) => NavigationNotifier());