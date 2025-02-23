import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BookmarkScreen extends ConsumerWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: [
            Text("Bookmark Screen"),
            Text("safafnasnjvhgfyt ytdydvhihiuhliknulgkyiiu "),

            SizedBox(height: 20),

            // ItemMovieVertical(),
            
          ],
        ),
      ),
    ); 
  }
  
}