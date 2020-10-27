import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
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
              Center(
                child: Text(
                  questions[questionIndex],
                ),
              ),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: () {
                  print('Answer 2 chosen!');
                },
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: () => print('Answer 3 chosen!'),
              ),
            ],
          )),
    );
  }
}
