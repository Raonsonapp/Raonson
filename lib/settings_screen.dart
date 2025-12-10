import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Танзимот")),
      body: ListView(
        children: [
          ListTile(
            title: Text("Dark Mode"),
            trailing: Switch(value: true, onChanged: (_) {}),
          ),
          ListTile(
            title: Text("Иваз кардани забон"),
            subtitle: Text("Тоҷики"),
          ),
        ],
      ),
    );
  }
}