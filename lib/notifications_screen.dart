import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  final List<String> notifications;
  NotificationsScreen({this.notifications = const ['Welcome to Raonson']});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: ListView.separated(
        itemCount: notifications.length,
        separatorBuilder: (_,__) => Divider(color: Colors.white12),
        itemBuilder: (_, i) => ListTile(
          title: Text(notifications[i], style: TextStyle(color: Colors.white)),
          leading: Icon(Icons.notifications, color: Colors.white),
        ),
      ),
    );
  }
}