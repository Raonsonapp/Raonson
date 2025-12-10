import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const PrimaryButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(text));
  }
}