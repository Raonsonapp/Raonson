import 'package:flutter/material.dart';

class ReelsProvider extends ChangeNotifier {
  List<String> _reels = [];
  List<String> get reels => _reels;

  void setReels(List<String> r) { _reels = r; notifyListeners(); }
  void addReel(String url) { _reels.add(url); notifyListeners(); }
}