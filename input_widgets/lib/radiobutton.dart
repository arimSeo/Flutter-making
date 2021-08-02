import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

enum Gender { Man, Women }

class _RadioButtonState extends State<RadioButton> {
  Gender _gender = Gender.Man;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radio button'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
            child: Column(
          children: <Widget>[
            ListTile(
              title: Text('남자'),
              leading: Radio(
                value: Gender.Man,
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value as Gender;
                  });
                },
              ),
            ),
            RadioListTile(
              title: Text('여자'),
              value: Gender.Women,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender = value as Gender;
                });
              },
            )
          ],
        )),
      ),
    );
  }
}
