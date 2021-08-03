import 'package:flutter/material.dart';

class CheckboxSwitch extends StatefulWidget {
  @override
  _CheckboxSwitchState createState() => _CheckboxSwitchState();
}

class _CheckboxSwitchState extends State<CheckboxSwitch> {
  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('checkbox와 switch'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            Switch(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              },
            )
          ],
        )),
      ),
    );
  }
}
