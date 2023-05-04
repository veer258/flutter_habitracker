import 'package:flutter/material.dart';

class StrHabit extends StatefulWidget {
  const StrHabit({super.key});

  @override
  State<StrHabit> createState() => _StrHabitState();
}

class _StrHabitState extends State<StrHabit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Workout"),
          TextButton(onPressed: () {}, child: Text("Biceps"))
        ],
      ),
    );
    ;
  }
}
