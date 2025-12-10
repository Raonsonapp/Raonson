import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  XFile? _file;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pick() async {
    final f = await _picker.pickImage(source: ImageSource.gallery);
    setState(() { _file = f; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload')),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            ElevatedButton(onPressed: _pick, child: Text('Pick Image')),
            SizedBox(height: 10),
            _file == null ? Text('No file', style: TextStyle(color: Colors.white)) : Image.file(File(_file!.path)),
            Spacer(),
            ElevatedButton(onPressed: () {}, child: Text('Upload (implement backend)')),
          ],
        ),
      ),
    );
  }
}