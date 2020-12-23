import 'package:flutter/material.dart';

void main() => runApp(MyApp(),);

class MyApp extends StatelessWidget{

  answerquestion(){
    print("This answer chosen.");
  }

  @override
  Widget build(BuildContext context){
     return MaterialApp(home:
     Scaffold(
       appBar: AppBar(
         title: Text('App Bar'),
       ),
       body: Column(
         children: [
           Text('The question'),
           
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