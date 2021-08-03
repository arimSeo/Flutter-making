import 'package:flutter/material.dart';

//첫번째 화면
class HeroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HeroPage2()),
          );
        },
        child: Hero(
            tag: 'image',
            child: Image.asset('images/춘식1.jpg', width: 100, height: 100)),
      ),
    );
  }
}

//두번째 화면
class HeroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: 'image',
        child: Image.asset('images/춘식1.jpg'),
      ),
    );
  }
}
