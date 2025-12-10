import 'package:flutter/material.dart';
import '../../services/video/video_editor_service.dart';

class EditorScreen extends StatelessWidget {
  final VideoEditorService editor = VideoEditorService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reels Editor")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await editor.export("video.mp4");
          },
          child: Text("Export Reel"),
        ),
      ),
    );
  }
}
