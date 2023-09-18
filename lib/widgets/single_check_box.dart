import 'package:flutter/material.dart';

class SingleCheckbox extends StatefulWidget {
  @override
  _SingleCheckboxState createState() => _SingleCheckboxState();
}

class _SingleCheckboxState extends State<SingleCheckbox> {
  bool isChecked = false; // 默认复选框未选中

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Checkbox(
        value: isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            isChecked = newValue!;
          });
        },
      ),
        Text("是",
          style: TextStyle(
              fontSize: 18,
          ),
        ),],
        );
}
}

