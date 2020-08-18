import 'package:flutter/material.dart';
import 'package:httprequestapp/pages/game_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WOMEN IN SCIENCE GAME',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: QuizPage(),
    );
  }
}