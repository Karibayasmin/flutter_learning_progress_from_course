
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler; // Here 'Function' property means that the values stored in this property will be a function or a pointer at a function.
  final String answerText;

  Answer({this.selectHandler, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler, // without parenthesis, because we don't want to execute it immediately.
      ),
    );
  }
}
