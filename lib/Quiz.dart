import 'package:flutter/material.dart';
import 'package:quiz/Result_Screen.dart';
import 'package:quiz/data/questions.dart';
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

  List<String> answersChosen = [];
  var correctScreen = 'start_screen';

  void restartQuiz() {
    setState(() {
      answersChosen = [];
      correctScreen = 'start_screen';
    });
  }

  void switchScreens(){
    setState(() {
      correctScreen = 'Questions_Screen';
    });
  }

  void addAnswer(String answer) {
    answersChosen.add(answer);

    if(answersChosen.length == questions.length){
      setState(() {
        correctScreen = 'Result_Screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreens);

    if(correctScreen == 'Questions_Screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: addAnswer);
    }

    else if(correctScreen == 'Result_Screen'){
      screenWidget = ResultScreen(answersChosen: answersChosen, onTap: restartQuiz,);
    }

    else{
      screenWidget = StartScreen(switchScreens);
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: screenWidget,
      ),
    );
  }
}