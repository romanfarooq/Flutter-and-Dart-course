import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex == 2 ? _questionIndex = 0 : _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max', 'Angela', 'Stephen', 'Colt'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questionText: question[_questionIndex]['questionText'] as String,
            ),
            ...(question[_questionIndex]['answers'] as List<String>).map(
              (answer) => (Answer(
                handleAnswer: _answerQuestion,
                answerText: answer,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
