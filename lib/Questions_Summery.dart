import 'package:flutter/material.dart';
import 'package:quiz/answer_index.dart';

class QuestionsSummery extends StatelessWidget{
  const QuestionsSummery({super.key, required this.summeryData});

  final List<Map<String,Object>> summeryData;

  @override 
  Widget build(context){
    return SizedBox(height: 300,
      child: SingleChildScrollView(
          child: Column(
            children: summeryData.map(
              (data) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    AnswerIndex(idx: ((data['question_idx'] as int) + 1), isCorrectAns: data['user_answer'] == data['correct_answer']),
                    Expanded(
                      child: Column(children: [
                        Text((data['question'] as String), style: TextStyle(color: Colors.white)),
                        SizedBox(height: 5,),
                        Text("The correct Answer: ${data['correct_answer'] as String}", style: TextStyle(color: Colors.green),),
                        SizedBox(height: 5,),
                        Text("Your answer: ${data['user_answer'] as String}", style: TextStyle(color: Colors.cyan),),
                      ],),
                    ),
                  ],),
                );
              },
            ).toList(),
          ),
        ),
      );
  }
}