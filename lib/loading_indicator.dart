import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final String? message;
  LoadingIndicator({this.message});
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        CircularProgressIndicator(),
        if (message != null) SizedBox(height: 8),
        if (message != null) Text(message!, style: TextStyle(color: Colors.white70)),
      ]),
    );
  }
}