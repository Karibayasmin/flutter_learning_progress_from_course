import 'package:flutter/material.dart';

void main() => runApp(MyApp(),);

class MyApp extends StatelessWidget{

  var questionIndex = 0;


  answerquestion(){
      print("This answer chosen.");
      questionIndex = questionIndex + 1;


  }

  @override
  Widget build(BuildContext context){

    var questions = ['what\'s your favorite color?',
      'what\'s your favorite animal?'];

     return MaterialApp(home:
     Scaffold(
       appBar: AppBar(
         title: Text('App Bar'),
       ),
       body: Column(
         children: [
           Text(
             //questions[0],
               questions[questionIndex],
           ),
           
           RaisedButton(
             child: Text('Answer 1'),
             onPressed: (answerquestion), // Here answerquestion is named function
           ),
           RaisedButton(
             child: Text('Answer 2'),
             onPressed: () {
               print('Answer 2 chosen'); // It is Anonymous function.
             },
           ),
           RaisedButton(
             child: Text('Answer 3'),
             onPressed: (){
               print('Answer 3 chosen');
             },
           ),
           RaisedButton(
             child: Text('Answer 4'),
             onPressed: (){
               print('Answer 4 chosen');
             },
           ),
         ],
       ),
      ),
     );
  }
}