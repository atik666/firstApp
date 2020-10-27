import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex <= 0 ? _questionIndex++ : _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal",
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('My First APP!')),
            backgroundColor: Colors.pink,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Question(
                questionText: questions[_questionIndex],
              ),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          )),
    );
  }
}
