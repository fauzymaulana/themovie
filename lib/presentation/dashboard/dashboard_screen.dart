import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/navigations/provider/dashboard_navigaton_provider.dart';
import 'package:watch_me/presentation/dashboard/home/home_screen.dart';
import 'package:watch_me/presentation/dashboard/widgets/bottom_nav_bar.dart';

import '../../core/navigations/enums/dashboard_routes_enum.dart';
import 'bookmark/bookmark_screen.dart';

class DashboardScreen extends ConsumerWidget {
  final Widget child;
  const DashboardScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(bottomNavigationProvider);

    final screenMap = {
      BottomNavState.home: const HomeScreen(),
      BottomNavState.bookmark: const BookmarkScreen(),
      BottomNavState.account: const HomeScreen(),
    };

    return Scaffold(
      body: child,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
  
}