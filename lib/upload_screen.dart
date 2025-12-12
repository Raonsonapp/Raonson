import 'dart:io';
import 'package:flutter/material.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  File? selectedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Upload")),
      body: Center(
        child: Column(
          children: [
            if (selectedFile != null)
              Image.file(selectedFile!, height: 250),

            ElevatedButton(
              onPressed: () {
                // future: picker
              },
              child: const Text("Select File"),
            ),
          ],
        ),
      ),
    );
  }
}
