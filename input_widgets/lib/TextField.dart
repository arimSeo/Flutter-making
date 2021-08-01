import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //main.dart에 scaffold로 이 페이지를 감싸고 있음!! -> scaffold()안에 scaffold로 감싸면X: 'RenderFlex overflowed by Infinity pixels on the bottom.'요론 에러뜸
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 400, //입력창 밑줄길이 조절
            child: Container(
              child: TextField(),
              padding: EdgeInsets.only(left: 20, bottom: 30), //아래 textfield와 간격
            ),
          ),
          SizedBox(
            width: 400,
            child: Container(
              child: TextField(
                  decoration: InputDecoration(
                labelText: '여기에 입력하세요',
              )),
              padding: EdgeInsets.only(left: 20, bottom: 30),
            ),
          ),
          SizedBox(
            width: 400,
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: '여기에 입력하세요',
                  border: OutlineInputBorder(),
                ),
              ),
              padding: EdgeInsets.only(left: 20),
            ),
          )
        ],
      ),
    );
  }
}
