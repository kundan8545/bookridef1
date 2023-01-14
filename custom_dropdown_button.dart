import 'package:flutter/material.dart';

class CustomDropDownButtonClass extends StatelessWidget {
  List<String> values;
  double width;
  CustomDropDownButtonClass({required this.values, required this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 98, 72, 127),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {},
        items: values.map((e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
        underline: Container(),
        dropdownColor: Color.fromARGB(255, 98, 73, 127),
        style: TextStyle(color: Color.fromARGB(255, 223, 214, 214)),
      ),
    );
  }
}
