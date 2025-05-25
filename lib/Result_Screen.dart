import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/Questions_Summery.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.answersChosen, required this.onTap});

  final void Function() onTap;

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
    final summery = createSammery();
    final numOfQuestions = questions.length;
    final numOfCorrectAns = summery.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You answerd $numOfCorrectAns out of $numOfQuestions questions correctly!', style: TextStyle(
            color: Colors.white,
          ),),
          SizedBox(height: 15,),
          QuestionsSummery(summeryData: summery,),
          TextButton(onPressed: onTap, child: Text('Restart Quiz', style: TextStyle(
            color: Colors.white
          ),)),
            ]),
    );
  }
}