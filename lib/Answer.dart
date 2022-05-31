import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  var answerText;
  Answer(this.selectHandler,this.answerText,{Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(onPressed: selectHandler,
        child: Text(
          "$answerText",
          style: const TextStyle(
            color: Colors.blue,fontSize: 24,
          ),textAlign: TextAlign.center,
        )

      ),
    );
  }
}
