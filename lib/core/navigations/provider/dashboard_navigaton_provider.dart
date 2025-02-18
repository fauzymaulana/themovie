import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../enums/dashboard_routes_enum.dart';

class BottomNavigationProvider extends StateNotifier<BottomNavState> {
  BottomNavigationProvider() : super(BottomNavState.home);

  void changeTab(BottomNavState tab) {
    state = tab;
  }

  void onTabTapped(int index) {
    if (index >= 0 && index < BottomNavState.values.length) {
      state = BottomNavState.values[index];
    }
  }
}

final bottomNavigationProvider = StateNotifierProvider<BottomNavigationProvider, BottomNavState>((ref) => BottomNavigationProvider());