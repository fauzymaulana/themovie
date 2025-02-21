import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class EnterExitRouteTransition extends CustomTransitionPage {
  final Widget enterPage;
  final Widget exitPage;

  EnterExitRouteTransition({
    required this.enterPage,
    required this.exitPage,
    LocalKey? key,
  }) : super(
          key: key,
          child: enterPage,
          transitionDuration: const Duration(milliseconds: 700),
          reverseTransitionDuration: const Duration(milliseconds: 800),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return Stack(
              children: <Widget>[
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 0.0),
                    end: const Offset(-1.0, 0.0),
                  ).animate(CurvedAnimation(
                      parent: animation, curve: Curves.easeInOut)),
                  child: exitPage,
                ),
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(CurvedAnimation(
                      parent: animation, curve: Curves.easeInOut)),
                  child: child,
                ),
              ],
            );
          },
        );
}
