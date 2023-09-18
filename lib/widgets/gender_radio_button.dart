import 'package:flutter/material.dart';

class GenderRadioButtons extends StatefulWidget {
  @override
  _GenderRadioButtonsState createState() => _GenderRadioButtonsState();
}

class _GenderRadioButtonsState extends State<GenderRadioButtons> {
  String selectedGender = '男';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          " 性别",
          style: TextStyle(fontSize: 17),
        ),
        Radio(
          value: '男',
          groupValue: selectedGender,
          onChanged: (value) {
            setState(() {
              selectedGender = value!;
            });
          },
        ),
        Text('男'),
        Radio(
          value: '女',
          groupValue: selectedGender,
          onChanged: (value) {
            setState(() {
              selectedGender = value!;
            });
          },
        ),
        Text('女'),
      ],
    );
  }
}