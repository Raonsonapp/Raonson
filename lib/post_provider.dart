import 'package:flutter/material.dart';
import '../models/post_model.dart';

class PostProvider with ChangeNotifier {
  List<PostModel> posts = [];

  void setPosts(List<PostModel> list) {
    posts = list;
    notifyListeners();
  }
}