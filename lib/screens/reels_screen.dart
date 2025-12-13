import 'package:flutter/material.dart';
import '../components/video_player_widget.dart';

class ReelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Text('Reels', style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height: 12),
          // Placeholder reel item
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            height: 260,
            color: Colors.black,
            child: Center(child: Text('Reel placeholder', style: TextStyle(color: Colors.white))),
          ),
          VideoPlayerController.network(url: videoUrl)
        ],
      ),
    );
  }
}
