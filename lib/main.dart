// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print('Answer  chosen');
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Moja pierwsza \"aplikacja\"')),
        body: Column(
          children: [
            //Text(questions[_questionIndex]),
            Question(
              questions[_questionIndex]['question'],
            ),
            // ...[Answer(_answerQuestion,'a'),   children jest jako lista a my tutaj rozlozylismy te elementy zeby byly czescia TEJ listy :) ez
            // Answer(_answerQuestion,'b'),
            // Answer(_answerQuestion,'c'),],
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
