import "package:flutter/material.dart";
import "package:flutter_habitracker/util/bool_habit.dart";
import "package:flutter_habitracker/util/int_habit.dart";
import "package:flutter_habitracker/util/str_habit.dart";
import "package:flutter_habitracker/util/add_habit.dart";

class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  List habitsList = [
    BoolHabit(habitName: "My first Boolean habit"),
    BoolHabit(habitName: "My first Boolean habit"),
    BoolHabit(habitName: "My first Boolean habit"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Habits"),
      ),
      body: ListView(
        children: habitsList.map((habit) => habit as Widget).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
