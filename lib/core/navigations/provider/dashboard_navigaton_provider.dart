import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../app_routes.dart';
import '../enums/dashboard_routes_enum.dart';

class BottomNavigationProvider extends StateNotifier<int> {
  BottomNavigationProvider() : super(0);

  void changeTab(int index, GoRouter router) {
    state = index;
    switch (index) {
      case 0:
        router.go(AppRoutes.DASHBOARD);
        break;
      case 1:
        router.go(AppRoutes.BOOKMARK);
        break;
    }
  }

  // void changeTab(BottomNavState tab) {
  //   state = tab;
  // }

  // void onTabTapped(int index) {
  //   if (index >= 0 && index < BottomNavState.values.length) {
  //     state = BottomNavState.values[index];
  //   }
  // }
}

final bottomNavigationProvider = StateNotifierProvider<BottomNavigationProvider, int>((ref) => BottomNavigationProvider());