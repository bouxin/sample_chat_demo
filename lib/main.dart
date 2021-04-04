
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


void main() => runApp(new SampleChatApp());


class SampleChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Chat Demo',
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFFFEF9EB)
      ),);
  }

}