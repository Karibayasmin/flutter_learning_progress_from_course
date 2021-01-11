import 'package:flutter/material.dart';
import 'package:learn_from_course/question.dart';
import 'package:learn_from_course/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({@required this.questions,
        @required this.questionIndex ,
        @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer){
          return Answer(selectHandler: answerQuestion, answerText: answer,);
        }).toList()

      ]
    );
  }
}
