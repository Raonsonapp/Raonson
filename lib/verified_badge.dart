import 'package:flutter/material.dart';

class VerifiedBadge extends StatelessWidget {
  final bool active;

  const VerifiedBadge({required this.active});

  @override
  Widget build(BuildContext context) {
    return active
        ? Icon(Icons.verified, color: Colors.green, size: 18)
        : SizedBox();
  }
}