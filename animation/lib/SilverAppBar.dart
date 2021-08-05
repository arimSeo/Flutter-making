import 'package:flutter/material.dart';

import 'AnimatedContainer.dart';
import 'hero.dart';

class SliverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            pinned: true,
            expandedHeight: 180.0, //헤더의 최대 높이
            flexibleSpace: FlexibleSpaceBar(
              //텍스트 앱바 대신 로고 이미지로 들어가도록 하고싶!
              title: Container(
                child: Text(
                  'CLAY',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              background: Image.asset(
                'images/찰리2.jpg',
                fit: BoxFit.cover,
              ),
            )),
        SliverFillRemaining(
          child: Container(
            margin: EdgeInsets.only(top: 120),
            child: Column(
              children: <Widget>[
                Text('이미지 클릭하고 전체화면 보기'),
                HeroPage1(),
                SizedBox(
                  height: 50,
                ),
                Text('이미지 클릭하고 크게보기'),
                Text('다시 클릭하면 원래대로'),
                AnimatedContainerPage(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
