import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 26.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
