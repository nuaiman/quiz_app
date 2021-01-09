import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int totalScore;
  Result({this.resetQuiz, this.totalScore});
  String get resultPhrase {
    var resultText;
    if (totalScore < 5) {
      resultText = 'You so Amazing <3';
    } else if (totalScore < 20) {
      resultText = 'You kinda Susss!';
    } else {
      resultText = 'You disgusting. EEwwww !!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 70,
          ),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          onPressed: resetQuiz,
          child: Text('Reset Quiz'),
        ),
      ],
    );
  }
}
