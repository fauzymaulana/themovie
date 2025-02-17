import 'package:flutter/material.dart';

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
                child: Text('Hello World!'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
