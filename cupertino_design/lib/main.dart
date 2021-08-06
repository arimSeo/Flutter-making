import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//쿠퍼티노 디자인: 아이폰스러운 디자인
//material 디자인: 기존 플러터 디자인 규칙(안드로이드 적용)
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Cupertino(),
    );
  }
}

class Cupertino extends StatefulWidget {
  @override
  _CupertinoState createState() => _CupertinoState();
}

class _CupertinoState extends State<Cupertino> {
  var _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('쿠퍼티노 디자인'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 100, bottom: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoSwitch(
                value: _isOn,
                onChanged: (bool value) {
                  setState(() {
                    _isOn = value;
                  });
                },
              ),
              SizedBox(
                height: 50,
              ),
              CupertinoButton(
                  child: Text('ios느낌 버튼'),
                  borderRadius: BorderRadius.circular(15.0),
                  padding: EdgeInsets.only(right: 40, left: 40),
                  color: Colors.orange,
                  onPressed: () {}),
              SizedBox(
                height: 50,
              ),
              CupertinoButton(
                child: Text('쿠퍼티노 Picker'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
