import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserProvider with ChangeNotifier {
  UserModel? user;

  void setUser(UserModel newUser) {
    user = newUser;
    notifyListeners();
  }
}