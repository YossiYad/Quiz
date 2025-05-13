import "package:flutter/material.dart";
//import "package:quiz/questions_screen.dart";
//import "package:quiz/Quiz.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz; 

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png"),
          Text(
            'The Developers Quiz',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: Text('Start Quiz', 
            style: TextStyle(
            fontSize: 24
                )
              ),
            icon: Icon(Icons.account_box),
          ),
        ],
      ),
    );
  }
}