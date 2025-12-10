import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String username;
  final String mediaUrl;

  const PostItem({required this.username, required this.mediaUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(username, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Container(
          height: 300,
          color: Colors.grey[300],
          child: Center(child: Text("Media")),
        )
      ],
    );
  }
}