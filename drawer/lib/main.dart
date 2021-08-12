import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DrawerPage(),
    );
  }
}

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
      ),
      //숨김메뉴창(왼쪽에 아이콘버튼)
      drawer: Drawer(
        child: Center(
          child: Text('슬라이드 메뉴1'),
        ),
      ),
      resizeToAvoidBottomInset: false, //overpixel에러 안뜨게 키보드 올라와도 화면이 안밀려올라가게 함
      drawerEdgeDragWidth: 500, //슬라이드 메뉴 창을 옆으로 당겨서 열기기능 정도(값)-> 비활성시 0
      //아이콘 버튼 말고 화면에서 스와이프 옆으로 했을 때 창이 나오게할건지(위와 동일 기능)
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      //슬라이드 메뉴 창이 나왔을때 남는 배경 부분 색상
      drawerScrimColor: Colors.yellow.withOpacity(0.3),
      endDrawer: Drawer(
        child: Center(
          child: Text('메뉴2'),
        ),
      ),
      body: Container(
        child: Text('screen'),
      ),
    );
  }
}
