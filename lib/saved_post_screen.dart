import 'package:flutter/material.dart';

class SavedPostsScreen extends StatelessWidget {
  final List<Map<String,String>> saved;
  SavedPostsScreen({this.saved = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saved Posts')),
      body: saved.isEmpty
          ? Center(child: Text('No saved posts', style: TextStyle(color: Colors.white)))
          : ListView(
              children: saved.map((p) => Card(
                color: Colors.grey[900],
                child: ListTile(
                  title: Text(p['title'] ?? '', style: TextStyle(color: Colors.white)),
                  subtitle: Text(p['desc'] ?? '', style: TextStyle(color: Colors.white70)),
                ),
              )).toList(),
            ),
    );
  }
}