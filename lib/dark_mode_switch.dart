import 'package:flutter/material.dart';

class DarkModeSwitch extends StatefulWidget {
  @override
  _DarkModeSwitchState createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends State<DarkModeSwitch> {
  bool isDark = true;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isDark,
      onChanged: (v) { setState(() => isDark = v); /* hook into ThemeProvider if present */ },
    );
  }
}