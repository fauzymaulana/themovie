import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/config/theme/app_colors.dart';
import '../../../core/config/theme/app_typography.dart';
import '../widgets/item_movie_vertical.dart';

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