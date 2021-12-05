//@dart-2.9
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'Whats your fav color?',
      'answers': [
        {'text': 'yellow', 'score': 10},
        {'text': 'black', 'score': 5},
        {'text': 'blue', 'score': 0},
        {'text': 'orange', 'score': 15},
      ]
    },
    {
      'question': 'how old are u?',
      'answers': [
        {'text': '10-20', 'score': 10},
        {'text': '20-35', 'score': 50},
        {'text': ' 35-50', 'score': 5},
        {'text': '50+', 'score': 1},
      ]
    },
    {
      'question': 'cat or dog?',
      'answers': [
        {'text': 'cat', 'score': 50},
        {'text': 'dog', 'score': 0},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else
      print('no more questions');
  }
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Moja pierwsza \"aplikacja\"')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                totalScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
