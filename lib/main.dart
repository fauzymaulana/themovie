import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watch_me/core/extensions/AppLocationsExt.dart';
import 'package:watch_me/core/navigations/app_router.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    
    return MaterialApp.router(
      routerConfig: router,
    );
    // return MaterialApp(
    //   home: Scaffold(
    //     backgroundColor: Colors.yellow,
    //     body: SafeArea(
    //       child: SizedBox.expand(
    //         child: Container(
    //           color: Colors.red,
    //           child: Center(
    //             child: Text(localizations.greeting),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.yellow,
//         body: SafeArea(
//           child: SizedBox.expand(
//             child: Container(
//               color: Colors.red,
//               child: Center(
//                 child: Text("AppLocalizations.of(context).greeting"),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
