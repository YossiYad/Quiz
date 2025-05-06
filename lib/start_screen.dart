import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png"),
          Text(
            'Start screen',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              //...
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: Text('button', style: TextStyle(fontSize: 24)),
            icon: Icon(Icons.account_box),
          ),
        ],
      ),
    );
  }
}
