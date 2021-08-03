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
          primarySwatch: Colors.deepOrange,
        ),
        //따로 class로 빼지 않고 바로 작성하는 방식으로.
        home: Scaffold(
          appBar: AppBar(
            title: Text('animation효과 위젯'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                child: HeroPage1(),
              ),
              // HeroPage2()
            ],
          ),
        ));
  }
}
