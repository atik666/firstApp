import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  static const _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 4}
      ]
    },
    {
      'questionText': "What's your favorite animal",
      'answers': [
        {'text': 'Cow', 'score': 10},
        {'text': 'Dog', 'score': 8},
        {'text': 'Cat', 'score': 6},
        {'text': 'Rabbit', 'score': 4}
      ]
    },
    {
      'questionText': "What's your favorite language",
      'answers': [
        {'text': 'C++', 'score': 10},
        {'text': 'Matlab', 'score': 8},
        {'text': 'Python', 'score': 6},
        {'text': 'Flutter', 'score': 4}
      ],
    },
  ];

  int _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('My First APP!')),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(),
        ),
      ),
    );
  }
}
