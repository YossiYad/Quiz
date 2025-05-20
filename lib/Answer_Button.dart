import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton(this.answer, this.onTap, {super.key});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 138, 95, 212),
      ),
      child: Text(
        answer,
        textAlign: TextAlign.center,
         style: TextStyle(
          color: Colors.white
          
          ),
      ),
    );
  }
}