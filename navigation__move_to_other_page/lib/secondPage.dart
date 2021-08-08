import 'package:flutter/material.dart';
import 'package:navigation__move_to_other_page/firstPage.dart';

class SecondPage extends StatelessWidget {
  final Person person;

  SecondPage({required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 페이지'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ElevatedButton(
          child: Text('이전페이지로'),
          onPressed: () {
            Navigator.pop(context, 'ok'); //현재화면 종료하고 이전 화면으로 돌아감
          },
        ),
      ),
    );
  }
}
