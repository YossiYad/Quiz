import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/Questions_Summery.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.answersChosen});

  List<Map<String,Object>> createSammery() {
    List<Map<String,Object>> summery = [];

    for(var i = 0; i < answersChosen.length; ++i){
      summery.add(
        {
          'question_idx' : i,
          'question' : questions[i].quests,
          'correct_answer' : questions[i].ans[0],
          'user_answer' : answersChosen[i],
        }
      );
    }

    return summery;
  }

  final List<String> answersChosen;
  @override
  Widget build(context) {
    var summery = createSammery();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        QuestionsSummery(summeryData: summery,)
          ]);
  }
}