import 'package:flutter/material.dart';

class AddHabit extends StatefulWidget {
  const AddHabit({Key? key}) : super(key: key);

  @override
  State<AddHabit> createState() => _AddHabitState();
}

class _AddHabitState extends State<AddHabit> {
  String? _habitName;
  List<String> _types = ['Yes / No', 'Number', 'Text'];
  String? _habitType;

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add a new habit'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    _habitName = value;
                  });
                },
                decoration: InputDecoration(hintText: "Enter habit name"),
              ),
              SizedBox(height: 16),
              DropdownButton<String>(
                value: _habitType,
                onChanged: (String? newValue) {
                  setState(() {
                    _habitType = newValue;
                  });
                },
                dropdownColor: Colors.grey[200],
                items: _types.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_habitName != null && _habitType != null) {
                  print('Habit name: $_habitName');
                  print('Selected type: $_habitType');
                  Navigator.of(context).pop(_habitName);
                }
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    ).then((value) {
      if (value != null) {
        setState(() {
          _habitName = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _showDialog,
      child: Icon(Icons.add),
    );
  }
}
