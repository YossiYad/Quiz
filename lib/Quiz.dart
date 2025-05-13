import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  var correctScreen = 'start_screen';

  void switchScreens(){
    setState(() {
      correctScreen = 'Questions_Screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: correctScreen == 'start_screen' ? 
        StartScreen(switchScreens) :
        QuestionsScreen(),
      ),
    );
  }
}