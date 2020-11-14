import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.platform,
      title: Text(
        'Buy milk',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      value: isChecked,
      onChanged: (bool value) {
        isChecked ? isChecked = !value : isChecked = value;
        print(isChecked);
      },
    );
  }
}
