import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPlayerWidget extends StatefulWidget {
  final String url;
  MusicPlayerWidget({required this.url});

  @override
  _MusicPlayerWidgetState createState() => _MusicPlayerWidgetState();
}

class _MusicPlayerWidgetState extends State<MusicPlayerWidget> {
  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  Future<void> toggle() async {
    if (isPlaying) {
      await _player.pause();
    } else {
      await _player.play(UrlSource(widget.url));
    }
    setState(() { isPlaying = !isPlaying; });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow), onPressed: toggle),
        Expanded(child: Text('Music track', style: TextStyle(color: Colors.white))),
      ],
    );
  }
}