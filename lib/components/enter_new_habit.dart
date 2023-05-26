import 'package:flutter/material.dart';

class EnterNewHabit extends StatelessWidget {
  final controller;
  final VoidCallback onAdd;
  final VoidCallback onCancel;

  const EnterNewHabit(
      {super.key,
      required this.controller,
      required this.onAdd,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            autofocus: true,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.text_fields_rounded)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.text_fields_rounded)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.text_fields_rounded)),
              ]),
        ],
      ),
      actions: [
        TextButton(onPressed: onCancel, child: const Text("Cancel")),
        FilledButton(onPressed: onAdd, child: const Text("Add"))
      ],
    );
  }
}
