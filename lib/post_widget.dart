import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String imageUrl;
  PostWidget({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Image.network(imageUrl, fit: BoxFit.cover),
    );
  }
}