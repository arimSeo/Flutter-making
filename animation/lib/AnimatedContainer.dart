import 'package:flutter/material.dart';

//Hero위젯과 유사! -but. 화면전환X 한화면 내에서 변경
import 'dart:math'; //Random 클래스 사용에 필요

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  var _size = 150.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          // final random = Random();
          setState(() {
            //클릭할 때마다 100.0~299.0 사이의 실수를 랜덤하게 얻기 ->변경효과 사이즈
            // _size = random.nextInt(200).toDouble() + 100;
            //
            //클릭할 때마다 사이즈 커졌다가 원상복구 하기
            _size == 150.0 ? _size = 250.0 : _size = 150.0;
          });
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _size,
          height: _size,
          child: Image.asset('images/춘식라이언.jpg'),
          curve: Curves.linearToEaseOut,
        ),
      ),
    );
  }
}
