import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarkScreen extends ConsumerWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: SizedBox.expand(
          child: Container(
            color: Colors.lightGreen,
            child: Center(
              child: Text("Bookmark Screen"),
            ),
          ),
        ),
      ),
    ); 
  }
  
}