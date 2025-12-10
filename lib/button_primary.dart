import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  PrimaryButton(this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(text));
  }
}