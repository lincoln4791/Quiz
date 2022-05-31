import 'package:flutter/cupertino.dart';

import 'Answer.dart';
import 'Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final VoidCallback answer;

  const Quiz({required this.answer,required this.questions,required this.questionIndex,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  <Widget>[
        Question(questions[questionIndex]['question']),
/*            Answer(_answer,((questions[questionIndex]['answer']) as List<String>)[0],),
            Answer(_answer,((questions[questionIndex]['answer']) as List<String>)[1],),
            Answer(_answer,((questions[questionIndex]['answer']) as List<String>)[2],)*/
        ...(questions[questionIndex]['answer'] as List<String>).map((ans) {
          return Answer(answer, ans);
        }),

      ],
    );
  }
}
