import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result({@required this.totalScore, this.resetQuiz});
  String get resultPhrase {
    String resultText = "After detailed analysis...\n\n";
    if (totalScore < 10) {
      resultText += ' Turns out you\'re pretty innocent and peaceful';
    } else if (totalScore <= 60) {
      resultText += ' Turns out you\'re not so peaceful';
    } else if (totalScore <= 200) {
      resultText += ' Turns out you\'re threat to our planet boo :-(';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
           FlatButton(child: Text('RESET QUIZ'), onPressed: resetQuiz,),
        ],
      ),
    );
  }

 
}
