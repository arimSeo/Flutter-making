import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  final _valueList = ['사과', '감자', '오렌지'];
  var _selectedValue = '사과';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: _selectedValue,
        items: _valueList.map(
          (value) {
            return DropdownMenuItem(
              value: value,
              // value: value,
              child: Text(value),
            );
          },
        ).toList(),
        onChanged: (value) {
          setState(() {
            _selectedValue = value;
          });
        },
      ),
    );
  }
}
