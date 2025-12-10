import 'package:flutter/material.dart';

class ReelsDraftsScreen extends StatelessWidget {
  final List<String> drafts;
  ReelsDraftsScreen({this.drafts = const ['Draft 1', 'Draft 2']});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reels Drafts')),
      body: ListView.builder(
        itemCount: drafts.length,
        itemBuilder: (_, i) => ListTile(
          leading: Icon(Icons.movie),
          title: Text(drafts[i], style: TextStyle(color: Colors.white)),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: [
            IconButton(icon: Icon(Icons.edit), onPressed: () {}),
            IconButton(icon: Icon(Icons.delete), onPressed: () {}),
          ]),
        ),
      ),
    );
  }
}