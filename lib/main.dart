import 'package:flutter/material.dart';
import 'package:watch_me/core/extensions/AppLocationsExt.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: SizedBox.expand(
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(AppLocalizations.of(context).greeting),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
