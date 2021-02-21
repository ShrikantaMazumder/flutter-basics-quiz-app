import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic Quiz App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _qIndex = 0;

  var totalScore = 0;
  @override
  void _ansQuestion(int score) {
    totalScore += score;
    setState(() {
      _qIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
      totalScore = 0;
    });
  }

  static const questions = [
    {
      "question": "What\'s your favourite color?",
      "answers": [
        {"text": "Purple", "score": 3},
        {"text": "Blue", "score": 5},
        {"text": "Green", "score": 1}
      ]
    },
    {
      "question": "What\'s your favourite animal?",
      "answers": [
        {"text": "Dog", "score": 1},
        {"text": "Cat", "score": 3},
        {"text": "Tiger", "score": 5}
      ]
    },
    {
      "question": "Who\'s your favourite instructor?",
      "answers": [
        {"text": "Maximillian", "score": 1},
        {"text": "Brad", "score": 1},
        {"text": "Bucky", "score": 1}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: questions.length > _qIndex
          ? Quiz(questions, _qIndex, _ansQuestion)
          : Result(
              totalScore: totalScore,
              resetFunc: _resetQuiz,
            ),
    );
  }
}
