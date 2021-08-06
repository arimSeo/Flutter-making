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
                  child: Text('클릭하면 alert창'),
                  borderRadius: BorderRadius.circular(15.0),
                  padding: EdgeInsets.only(right: 40, left: 40),
                  color: Colors.orange,
                  onPressed: () {
                    setState(() {
                      _showCupertinoDialog();
                    });
                  }),
              SizedBox(
                height: 50,
              ),
              CupertinoButton(
                child: Text('쿠퍼티노 Picker'),
                onPressed: () {
                  setState(() {
                    _showCupertinoPicker();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showCupertinoDialog() {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text('공지'),
        content: Text('WEVIVOR 체고다!'),
        actions: <Widget>[
          CupertinoDialogAction(child: Text('Cancel')),
          CupertinoDialogAction(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop(); //다이얼로그(alert창) 닫기
            },
          )
        ],
      ),
    );
  }

  _showCupertinoPicker() async {
    //0부터 9까지 숫자 리스트 생성
    // final _items = List.generate(10, (i) => i);
    List<String> _items2 = ['소윤', '수민', '아림', '예진'];
    var result = _items2[0]; //기본값0

    await showCupertinoModalPopup(
      context: context,
      builder: (context) => Container(
        height: 200.0, //피커의 높이
        child: CupertinoPicker(
          children:
              _items2.map((e) => Text('만만치않은녀석들.$e')).toList(), //리스트 요소들 표시
          itemExtent: 50.0, //항목 1개 높이
          onSelectedItemChanged: (int value) {
            result = _items2[value];
          },
        ),
      ),
    );
    print(result);
  }
}
