import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            TextField(controller: email, decoration: InputDecoration(hintText: "Email")),
            TextField(controller: password, obscureText: true, decoration: InputDecoration(hintText: "Password")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}