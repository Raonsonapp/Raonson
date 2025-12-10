import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  AppButton({required this.text, required this.onPressed});
  @override
  Widget build(BuildContext ctx) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20)),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
