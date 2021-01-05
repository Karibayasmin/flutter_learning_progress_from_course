import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;  // So it can only take change value towards constructor, but in this stateless class I can't change this properties value, this is the meaning of this final here.

  Question({this.questionText});


  @override
  Widget build(BuildContext context) {
    print('questionText: $questionText');
    return Container(
      width: double.infinity, // infinity means Container can take as much size, as much width as it can get.
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
