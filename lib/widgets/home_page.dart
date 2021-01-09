import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _questions = [
    {
      'questionText': 'What\'s your favourite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite Meal?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Fried Rice', 'score': 7},
        {'text': 'Steak', 'score': 3},
        {'text': 'Fruit Salad', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite car?',
      'answers': [
        {'text': 'Mercedes', 'score': 10},
        {'text': 'BMW', 'score': 7},
        {'text': 'Lexus', 'score': 3},
        {'text': 'Toyota', 'score': 1}
      ]
    },
  ];

  var _questionIndex = 0;

  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizmi'),
      ),
      body: _questions.length > _questionIndex
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion,
            )
          : Result(
              resetQuiz: _resetQuiz,
              totalScore: _totalScore,
            ),
    );
  }
}
