import 'package:flutter/material.dart';
import 'package:flutter_habitracker/util/habits_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[300],
          ),
        ),
        home: HabitsPage());
  }
}
