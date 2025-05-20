import 'package:flutter/material.dart';
import 'package:quiz/Answer_Button.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  var currentQuestionIdx = 0;

  void nextQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIdx++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIdx];
    return Center(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.quests, 
              style:TextStyle(
              color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40,),
            ...currentQuestion.getShuffledAnswers().map((answer){
              return AnswerButton(answer,() {
                nextQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}


