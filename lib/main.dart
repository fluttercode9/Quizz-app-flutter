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
        'yellow',
        'black',
        ' blue',
        'orange',
      ]
    },
    {
      'question': 'how old are u?',
      'answers': [
        '10-20',
        '20-35',
        ' 35-50',
        '50+',
      ]
    },
    {
      'question': 'cat or dog?',
      'answers': [
        'cat',
        'dog',
      ]
    }
  ];
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else
      print('no more questions');
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
            : Result(),
      ),
    );
  }
}
