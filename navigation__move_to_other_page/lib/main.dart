import 'package:flutter/material.dart';

import 'firstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: FirstPage(),
    );
  }
}
