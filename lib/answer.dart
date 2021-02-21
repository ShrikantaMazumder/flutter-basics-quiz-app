import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function func;
  Answer(this.answer, this.func);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => func(),
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.deepPurple,
      ),
    );
  }
}
