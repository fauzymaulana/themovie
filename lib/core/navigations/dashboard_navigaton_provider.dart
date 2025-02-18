import 'package:flutter_riverpod/flutter_riverpod.dart';

enum BottomNavState { home, bookmark, account }

class BottomNavigationProvider extends StateNotifier<BottomNavState> {
  BottomNavigationProvider() : super(BottomNavState.home);

  void changeTab(BottomNavState tab) {
    state = tab;
  }

  void onTabTapped(int index) {
    if (index >= 0 && index < BottomNavState.values.length) {
      changeTab(BottomNavState.values[index]);
    }
  }
}

final bottomNavigationProvider = StateNotifierProvider<BottomNavigationProvider, BottomNavState>((ref) => BottomNavigationProvider());