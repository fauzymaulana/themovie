import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../enums/slider_directions_enum.dart';

// class SlidePageTransition extends CustomTransitionPage {
//   SlidePageTransition({
//     required Widget child,
//     required SlideDirection direction,
//     LocalKey? key,
//   }) : super(
//           key: key,
//           child: child,
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             const curve = Curves.easeInOut;

//             // Atur posisi masuk & keluar berdasarkan arah transisi
//             Offset beginOffset = (direction == SlideDirection.forward)
//                 ? const Offset(1.0, 0.0) // Dari kanan ke tengah (navigasi maju)
//                 : const Offset(-1.0, 0.0); // Dari kiri ke tengah (navigasi mundur)

//             Offset endOffset = Offset.zero; // Berhenti di tengah

//             // Animasi masuk (enter)
//             var enterTween = Tween<Offset>(
//               begin: beginOffset,
//               end: endOffset,
//             ).chain(CurveTween(curve: curve));

//             // Animasi keluar (exit) dengan arah berlawanan
//             var exitTween = Tween<Offset>(
//               begin: Offset.zero,
//               end: (direction == SlideDirection.forward)
//                   ? const Offset(-1.0, 0.0) // Ke kiri keluar
//                   : const Offset(1.0, 0.0), // Ke kanan keluar
//             ).chain(CurveTween(curve: curve));

//             var exitAnimation = secondaryAnimation.drive(exitTween);
//             var enterAnimation = animation.drive(enterTween);

//             return SlideTransition(
//               position: enterAnimation,
//               child: SlideTransition(position: exitAnimation, child: child),
//             );
//             // return Stack(
//             //   children: [
//             //     SlideTransition(position: exitAnimation, child: context.widget),
//             //     SlideTransition(position: enterAnimation, child: child),
//             //   ],
//             // );
//           },
//         );
// }

// class EnterExitPage extends CustomTransitionPage {
//   EnterExitPage({
//     required Widget child,
//     required bool isEntering, // Apakah halaman sedang masuk atau keluar
//     LocalKey? key,
//   }) : super(
//           key: key,
//           child: child,
//           transitionDuration: const Duration(milliseconds: 300),
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             // Animasi halaman yang keluar
//             final exitAnimation = Tween<Offset>(
//               begin: Offset.zero,
//               end: const Offset(-1.0, 0.0), // Pindah ke kiri saat keluar
//             ).animate(animation);

//             // Animasi halaman yang masuk
//             final enterAnimation = Tween<Offset>(
//               begin: const Offset(1.0, 0.0), // Masuk dari kanan
//               end: Offset.zero,
//             ).animate(animation);

//             return Stack(
//               children: [
//                 if (!isEntering)
//                   SlideTransition(
//                     position: exitAnimation,
//                     child: child, // Halaman yang keluar
//                   ),
//                 SlideTransition(
//                   position: enterAnimation,
//                   child: child, // Halaman yang masuk
//                 ),
//               ],
//             );
//           },
//         );
// }


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
                  ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
                  child: exitPage,
                ),
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
                  child: child,
                ),
              ],
            );
          },
        );
}