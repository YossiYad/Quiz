import 'package:flutter/material.dart';
import 'package:quiz/Gradient_decent.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: GradientDecent(),
      ),
    );
  }
}