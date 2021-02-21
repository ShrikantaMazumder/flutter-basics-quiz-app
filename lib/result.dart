import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetFunc;

  const Result({Key key, this.totalScore, this.resetFunc}) : super(key: key);

  String get resultPhase {
    var text = "You did it";

    if (totalScore > 10) {
      text = "Your personality is not good";
    } else if (totalScore > 8) {
      text = "There are scope to improve yourself";
    } else if (totalScore > 5) {
      text = "You are going to be awesome";
    } else {
      text = "Wow! Your personality is awesome.";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: Text(
            resultPhase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: () => resetFunc(),
          child: Text("Reset Quiz!"),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
