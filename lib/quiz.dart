import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int _index;
  final Function _ansQuestion;
  Quiz(this.questions, this._index, this._ansQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[_index]['question']),
        ...(questions[_index]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer["text"], () => _ansQuestion(answer["score"]));
        }).toList(),
      ],
    );
  }
}
