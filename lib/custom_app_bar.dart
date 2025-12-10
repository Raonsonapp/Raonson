import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Raonson'),
      backgroundColor: Colors.black,
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.add_box), onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}