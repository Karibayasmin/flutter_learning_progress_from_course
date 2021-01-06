import 'package:flutter/material.dart';
import 'package:learn_from_course/question.dart';
import 'package:learn_from_course/answer.dart';

void main() => runApp(MyApp(),);

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{

  var _questionIndex = 0;


  answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context){

    var _questions = ['what\'s your favorite color?',
                      'what\'s your favorite animal?'];

    return MaterialApp(home:
    Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Column(
        children: [
          Question(questionText: _questions[_questionIndex],
            //questions[0],
            //_questions[_questionIndex],
          ),

          /*RaisedButton(
            child: Text('Answer 1'),
            onPressed: (answerQuestion), // Here answerQuestion is named function
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
          ),*/
          Answer(selectHandler: answerQuestion,), // The function address we are passing around is also known as a 'callback'. because the receiving widget call it in the future.
          Answer(selectHandler: answerQuestion,), // A pointer at a function to a widget
          Answer(selectHandler: answerQuestion,), // 'answerQuestion' function can be forwarded to answer widget, without parentheses, because we don't want to execute this 'answerQuestion' function immediately, when dart reads this.
          Answer(selectHandler: answerQuestion,),
        ],
      ),
    ),
    );
  }
}


