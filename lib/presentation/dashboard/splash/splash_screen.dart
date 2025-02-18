import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/navigations/provider/navigation_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  // @override
  // Widget build(BuildContext context, WidgetRef ref) {

  //   Future.delayed(const Duration(seconds: 2), () {
  //     ref.read(navigationProvider.notifier).navigateToDashboard();
  //   });
    
  //   return Scaffold(
  //     backgroundColor: Colors.yellow,
  //     body: SafeArea(
  //       child: SizedBox.expand(
  //         child: Container(
  //           color: Colors.red,
  //           child: Center(
  //             child: Text("Splash Screen"),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  
  @override
  ConsumerState<SplashScreen> createState() {
    return _SplashScreenState();
  }
  
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _setupNavigation();
  }

  void _setupNavigation() {
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        ref.read(navigationProvider.notifier).navigateToDashboard();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: SizedBox.expand(
          child: Container(
            color: Colors.red,
            child: Center(
              child: Text("Splash Screen"),
            ),
          ),
        ),
      ),
    );
  }
}