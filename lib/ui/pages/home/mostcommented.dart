import 'package:cloudart/models/data.dart';
import 'package:cloudart/models/post.dart';
import 'package:cloudart/ui/pages/auth/splash_page.dart';
import 'package:cloudart/ui/styles/colors.dart';
import 'package:cloudart/ui/widgets/post.dart';
import 'package:flutter/material.dart';

class MostCommented extends StatefulWidget {
  @override
  _MostCommentedState createState() => _MostCommentedState();
}

class _MostCommentedState extends State<MostCommented> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeController.isDark ? dBG : Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
        itemCount: mostCommented.length + 1,
        itemBuilder: (context, index) {
          if (index < mostCommented.length) {
            Post post = mostCommented[index];
            return PostTile(post: post);
          } else {
            return Container(
              height: 200.0,
              width: 200.0,
            );
          }
        },
      ),
    );
  }
}
