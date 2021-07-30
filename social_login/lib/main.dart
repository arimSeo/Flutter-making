import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/all.dart';

void main() {
  KakaoContext.clientId = "85ddc59dcd92d5c997920157dccd8e70";
  runApp(SocialLoginApp());
}

class SocialLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Login practice', //에뮬 상단에 뜨는 앱 이름
      home: KakaoLoginPage(), //main.dart페이지 본문에 띄울 클래스(내용)
    );
  }
}

//카카오 소셜로그인
class KakaoLoginPage extends StatefulWidget {
  @override
  _KakaoLoginPageState createState() => _KakaoLoginPageState();
}

class _KakaoLoginPageState extends State<KakaoLoginPage> {
  Future<void> _loginButtonPressed() async {
    String authCode = await AuthCodeClient.instance.request();
    print(authCode); //인증code받기
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CupertinoButton(
                //쿠퍼티노 스타일: ios느낌
                child: Text(
                  '카카오로그인',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                color: Colors.yellow,
                onPressed: _loginButtonPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
