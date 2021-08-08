import 'package:flutter/material.dart';
import 'package:navigation__move_to_other_page/secondPage.dart';

//다음페이지에 전달하기 위한 데이터
class Person {
  String name;
  String song;
  int age;

  Person(this.name, this.song, this.age);
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 페이지'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ElevatedButton(
          child: Text('다음페이지로'),
          onPressed: () async {
            final person = Person('아이유', '이름에게', 24);
            final result = await Navigator.push(
              //push속성 : 다음화면으로 이동 -새로운 화면이 표시되어도 이전 화면은 메모리에 남게 됨.
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(person: person), //화면이동 코드
              ), //MaterialPageRoute클래스는 android와 iOS 각각에 맞는 화면전환을 지원
            );
            print(result); //두번째 페이지에서 다시 돌아왔을때 ok출력
          },
        ),
      ),
    );
  }
}
