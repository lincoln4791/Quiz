import 'dart:ffi';

import 'package:first_app/Answer.dart';
import 'package:first_app/Question.dart';
import 'package:first_app/Quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = [
    {
      'question':'What is your name',
      'answer' : [
        'Lincoln',
        'Liza',
        'Nyza'
      ]
    },
    {
      'question':'How Old Are You',
      'answer' : [
        '10',
        '20',
        '30'
      ]
    },
    {
      'question':'Where do you live',
      'answer' : [
        'Dhanmondi',
        'Gendaria',
        'Razabazar'
      ]
    }

  ];

  void _answer(){
    setState((){
      _questionIndex++;
    });

    print("Question Index is -> $_questionIndex");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My App",
          ),
        ),
        body:_questionIndex<_questions.length?
        Quiz(answer: _answer,questions: _questions,questionIndex: _questionIndex)
            :
        const Center(child: Text("you did it"),),
      ),
    );
  }
}
