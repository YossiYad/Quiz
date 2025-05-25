import 'package:flutter/material.dart';

class AnswerIndex extends StatelessWidget {
  const AnswerIndex({super.key, required this.idx, required this.isCorrectAns});

  final bool isCorrectAns;
  final int idx;

  @override
  Widget build(context) {
    return Container(
      alignment: Alignment.center,
      width: 30,
      decoration: BoxDecoration(
        color: isCorrectAns ? 
          Colors.greenAccent :
          Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(idx.toString(),
      style: TextStyle(
        color: Colors.black
      ),),

    );
  }

}