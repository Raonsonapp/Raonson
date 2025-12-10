import 'package:flutter/material.dart';
import '../components/dark_mode_switch.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          ListTile(title: Text('Account', style: TextStyle(color: Colors.white))),
          ListTile(title: Text('Privacy', style: TextStyle(color: Colors.white))),
          ListTile(
            title: Text('Dark Mode', style: TextStyle(color: Colors.white)),
            trailing: DarkModeSwitch(),
          ),
        ],
      ),
    );
  }
}