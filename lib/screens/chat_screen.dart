import 'package:flutter/material.dart';
import '../services/chatgpt_service.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _ctl = TextEditingController();
  final _service = ChatGPTService(apiKey: 'REPLACE_API_KEY');
  String _response = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('ChatGPT'), backgroundColor: Colors.black),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(children: [
          TextField(controller: _ctl, style: TextStyle(color: Colors.white), decoration: InputDecoration(hintText: 'Ask something', hintStyle: TextStyle(color: Colors.white54))),
          SizedBox(height: 8),
          ElevatedButton(onPressed: () async {
            try {
              final res = await _service.getResponse(_ctl.text);
              setState(() { _response = res; });
            } catch (e) {
              setState(() { _response = 'Error: $e'; });
            }
          }, child: Text('Ask')),
          SizedBox(height: 12),
          Expanded(child: SingleChildScrollView(child: Text(_response, style: TextStyle(color: Colors.white)))),
        ]),
      ),
    );
  }
}
