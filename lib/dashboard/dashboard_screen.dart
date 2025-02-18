import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/navigations/dashboard_navigaton_provider.dart';
import 'package:watch_me/dashboard/home/home_screen.dart';
import 'package:watch_me/dashboard/widgets/bottom_nav_bar.dart';

import '../core/navigations/app_router.dart';
import 'bookmark/bookmark_screen.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(bottomNavigationProvider);

    final screenMap = {
      BottomNavState.home: const HomeScreen(),
      BottomNavState.bookmark: const BookmarkScreen(),
      BottomNavState.account: const HomeScreen(),
    };

    Widget currentScreen;
    switch (currentTab) {
      case BottomNavState.home:
        currentScreen = const HomeScreen();
        break;
      case BottomNavState.bookmark:
        currentScreen = const BookmarkScreen();
        break;
      case BottomNavState.account:
        currentScreen = const HomeScreen();
        break;
    }


    return Scaffold(
      body: currentScreen,
      // body: AnimatedSwitcher(
      //   duration: const Duration(milliseconds: 300),
      //   child: screenMap[currentTab]!,
      // ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
  
}