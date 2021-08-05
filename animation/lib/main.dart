import 'package:animation/AnimatedContainer.dart';
import 'package:animation/SilverAppBar.dart';
import 'package:animation/hero.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Animation',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        //따로 class로 빼지 않고 바로 작성하는 방식으로.
        home: Scaffold(
          // appBar: AppBar(
          //   title: Text('animation효과 위젯'),
          // ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: SliverPage(),
              ),

              // Text('이미지 클릭하고 전체화면 보기'),
              // HeroPage1(),
              // Text('이미지 클릭하고 크게보기'),
              // Text('다시 클릭하면 원래대로'),
              // AnimatedContainerPage(),
            ],
          ),
        ));
  }
}
