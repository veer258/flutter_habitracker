import 'package:flutter/material.dart';
import 'package:flutter_habitracker/util/int_habit.dart';
import 'package:flutter_habitracker/util/str_habit.dart';
import 'package:flutter_habitracker/util/bool_habit.dart';

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
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Habits"),
        ),
        body: Column(
          children: [
            BoolHabit(),
            IntHabit(),
            StrHabit(),
          ],
        ),
      ),
    );
  }
}
