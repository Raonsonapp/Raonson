import 'package:flutter/material.dart';
import '../../services/ai/king_ai_service.dart';

class KingAIScreen extends StatefulWidget {
  @override
  _KingAIScreenState createState() => _KingAIScreenState();
}

class _KingAIScreenState extends State<KingAIScreen> {
  KingAIService service = KingAIService();
  TextEditingController input = TextEditingController();
  String result = "";

  generate() async {
    result = await service.generateApp(input.text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KING AI — App Builder")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: input, decoration: InputDecoration(hintText: "Describe the app")),
            SizedBox(height: 12),
            ElevatedButton(onPressed: generate, child: Text("Generate App")),
            SizedBox(height: 20),
            Text(result)
          ],
        ),
      ),
    );
  }
}