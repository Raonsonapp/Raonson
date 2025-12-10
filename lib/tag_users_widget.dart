import 'package:flutter/material.dart';

class TagUsersWidget extends StatelessWidget {
  final List<String> users;
  TagUsersWidget({this.users = const []});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      children: users.map((u) => Chip(label: Text(u))).toList(),
    );
  }
}