import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;

  Question(this.questionText, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(questionText,
      style: const TextStyle(
        color: Color.fromARGB(100, 100, 100, 100),
        fontSize: 24,
      ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
