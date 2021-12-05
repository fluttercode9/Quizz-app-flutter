import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  Result({@required this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Thank You, nailed it! :) \n Score : ${totalScore}"),
    );
  }
}
