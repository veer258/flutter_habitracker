import 'package:flutter/material.dart';

class BoolHabit extends StatefulWidget {
  @override
  final String habitName;
  const BoolHabit({Key? key, required this.habitName}) : super(key: key);

  State<BoolHabit> createState() => _BoolHabitState();
}

class _BoolHabitState extends State<BoolHabit> {
  bool isChecked = false;

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
          Text(widget.habitName),
          Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              })
        ],
      ),
    );
  }
}
