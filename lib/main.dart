import 'package:flutter/material.dart';

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
          Text(
            //questions[0],
            _questions[_questionIndex],
          ),

          RaisedButton(
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
          ),
        ],
      ),
    ),
    );
  }
}


