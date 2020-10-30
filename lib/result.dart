import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText;
    resultScore <= 8
        ? resultText = 'You are awesome and innocent!'
        : resultScore <= 12
            ? resultText = 'Pretty likable!'
            : resultScore <= 16
                ? resultText = 'You are ... strange?!'
                : resultText = 'You are so bad';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
      resultPhrase,
      textAlign: TextAlign.center,
      style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
      ),
    ),
            Center(
              child: FlatButton(
                child: Text('Restart Quiz!'),
                textColor: Colors.blue,
                onPressed: resetQuiz,
              ),
            )
          ],
        ));
  }
}
