import 'package:flutter/material.dart';

class AIMessageBubble extends StatelessWidget {
  final String text;
  const AIMessageBubble({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}