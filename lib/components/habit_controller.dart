import 'package:flutter/material.dart';

class HabitController extends ChangeNotifier {
  String _habitType = '';

  String get habitType => _habitType;

  void setHabitType(String habitType) {
    _habitType = habitType;
    notifyListeners();
  }
}
