import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;
  Answer(this.answerQuestion, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: RaisedButton(
          color: Colors.indigo,
          textColor: Colors.white,
          child: Text(
            answerText,
            style: TextStyle(fontSize: 20),
          ),
          onPressed: answerQuestion,
        ),
      ),
    );
  }
}
