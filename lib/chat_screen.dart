import 'package:flutter/material.dart';
import '../../services/ai/chat_service.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ChatService chat = ChatService();
  final TextEditingController controller = TextEditingController();
  List<String> messages = [];

  send() async {
    final q = controller.text;
    controller.clear();
    messages.add("You: $q");
    final a = await chat.askGPT(q);
    messages.add("AI: $a");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ChatGPT 5")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: messages.map((m)=>Text(m)).toList(),
            ),
          ),
          Row(
            children: [
              Expanded(child: TextField(controller: controller)),
              IconButton(onPressed: send, icon: Icon(Icons.send))
            ],
          )
        ],
      ),
    );
  }
}