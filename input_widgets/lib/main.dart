import 'package:flutter/material.dart';
import 'package:input_widgets/DropDownButton.dart';
import 'package:input_widgets/TextField.dart';
import 'package:input_widgets/radiobutton.dart';

import 'Checkbox_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '입력용 위젯 모음',
        theme: ThemeData(primaryColor: Colors.black),
        home: InputWidgets());
  }
}

//클래스 분리해서 만들어 봄
class InputWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextFields(),
          ),
          Expanded(
            child: CheckboxSwitch(),
          ),
          Expanded(
            child: RadioButton(),
          ),
          // Expanded(
          //   child: Dropdown(),
          // )
        ],
      ),
    );
  }
}
