import "package:flutter/material.dart";

class IntHabit extends StatefulWidget {
  const IntHabit({super.key});

  @override
  State<IntHabit> createState() => _IntHabitState();
}

class _IntHabitState extends State<IntHabit> {
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
          Text("Water"),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  //increment
                },
                icon: Icon(Icons.remove_circle_outline_rounded),
              ),
              Text("0"),
              IconButton(
                onPressed: () {
                  //increment
                },
                icon: Icon(Icons.add_circle_outline_rounded),
              )
            ],
          )
        ],
      ),
    );
    ;
  }
}
