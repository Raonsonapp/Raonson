import 'package:flutter/material.dart';

class ReelCard extends StatelessWidget {
  final String username;
  final String videoPath;

  const ReelCard({required this.username, required this.videoPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.black,
      child: Column(
        children: [
          Text(username, style: TextStyle(color: Colors.white)),
          Expanded(child: Center(child: Text("Video Player..."))),
        ],
      ),
    );
  }
}