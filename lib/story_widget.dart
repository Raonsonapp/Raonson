import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String imageUrl;
  StoryWidget({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      margin: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.green, width: 2),
        image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}