import 'package:flutter/material.dart';

class QuestionsSummery extends StatelessWidget{
  const QuestionsSummery({super.key, required this.summeryData});

  final List<Map<String,Object>> summeryData;

  @override 
  Widget build(context){
    return Column(
      children: summeryData.map(
        (data) {
          return Row(children: [
            Text(((data['question_idx'] as int) + 1).toString()),
            Column(children: [
              Text((data['question'] as String)),
              Text((data['correct_answer'] as String)),
              Text((data['user_answer'] as String)),
            ],),
          ],);
        },
      ).toList(),
    );
  }
}