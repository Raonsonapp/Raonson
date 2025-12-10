import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  final String author;
  final String text;
  CommentWidget({required this.author, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(author, style: TextStyle(color: Colors.white)),
      subtitle: Text(text, style: TextStyle(color: Colors.white70)),
    );
  }
}