import 'package:flutter/material.dart';

class StoryViewer extends StatelessWidget {
  final List<String> images;
  StoryViewer({this.images = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        children: images.map((i) => Center(child: Image.network(i))).toList(),
      ),
    );
  }
}