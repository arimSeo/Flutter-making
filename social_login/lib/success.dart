import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '로그인 성공!',
        style: TextStyle(
          fontSize: 30,
          color: Colors.orange,
        ),
      ),
    );
  }
}
