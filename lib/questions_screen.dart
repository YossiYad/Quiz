import 'package:flutter/material.dart';
import 'package:quiz/Answer_Button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  
  
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('stam'),
          AnswerButton('answer 1', () {}),
          AnswerButton('answer 1', () {}),
          AnswerButton('answer 1', () {}),
          AnswerButton('answer 1', () {}),
        ],
      ),
    );
  }
}
