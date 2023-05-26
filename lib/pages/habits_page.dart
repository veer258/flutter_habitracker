import "package:flutter/material.dart";
import 'package:flutter_habitracker/util/bool_habit.dart';
import '../components/enter_new_habit.dart';
import '../components/habit_controller.dart';
import '../habits.dart';

class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  @override
  final _newHabitNameController = TextEditingController();
  final _newHabitTypeController = ();
  createNewHabit() {
    // show create habit dialog box
    showDialog(
      context: context,
      builder: (context) {
        return EnterNewHabit(
          controller: _newHabitNameController,
          controller: _newHabitTypeController,
          onAdd: addNewHabit,
          onCancel: cancelNewHabit,
        );
      },
    );
  }

  // add new habit
  void addNewHabit() {
    // add habit to list
    setState(() {
      habitsList.add(BoolHabit(habitName: _newHabitNameController.text));
    });
    // clearing the text fied
    _newHabitNameController.clear();
    // popping dialog box from screen
    Navigator.of(context).pop();
  }

  // cancel new habit
  void cancelNewHabit() {
    // clearing the text fied
    _newHabitNameController.clear();
    // popping dialog box from screen
    Navigator.of(context).pop();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: createNewHabit,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Habits"),
      ),
      body: ListView(
        children: habitsList.map((habit) => habit as Widget).toList(),
      ),
    );
  }
}
