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


  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context){

    //var _questions = [{'questionText': 'What\'s your favourite color?',  // Here we can use final instead of var because we never intend to change these values once our program runs.
    final _questions = [{'questionText': 'What\'s your favourite color?',
                       'answers' : ['Black', 'Red', 'Green', 'White'],
                      },
                      {
                        'questionText': 'What\'s your favourite animal?',
                        'answers' : ['Cat', 'Lion', 'Tiger', 'Dog'],

                      },
                      {
                        'questionText': 'Who\'s your favourite instructor?',
                        'answers' : ['Max', 'Max', 'Max', 'Max'],
                      }];


    return MaterialApp(home:
    Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Column(
        children: [
          Question(questionText: _questions[_questionIndex]['questionText'],
            //questions[0],
            //_questions[_questionIndex],
          ),
          ...(_questions[_questionIndex]['answers'] as List<String>).map((answer){
            return Answer(selectHandler: _answerQuestion, answerText: answer,);
          }).toList()

        /* Transforming this list of maps into list of widgets.
         * Here I am accessing a _questions which is a list. and a list is a class.
         * and this class defines a map method here. A map method executes a 'function' which we have to pass as an argument
         * to map on every element in the list on which we are calling map.
         * we have to pass a function on map. For that here we will define a function which receive argument.
         * Current element will receive this function.
         * So here we get the question, single question we are looking at
         * now we have to return a new value because map return us a list
         * So our that value will be a widget because we want every element in question, we want to return an element which
         * will replace which will be a widget
         * So here we access questions for the currently selected question index and there we now select a key and
         * that key now should be 'answers' which will give us a list of answers.
         * So map now takes an function which runs on all our answers. so here I get answer and I forward that
         * answer to my answer widget
         * So now I am going to tell dart that my answer is a list of String.
         * when at last we add '.toList' it converts the value map gives us to a list.
         * this ... means spread operator. It handles nested list*/

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
          /*Answer(selectHandler: answerQuestion,), // The function address we are passing around is also known as a 'callback'. because the receiving widget call it in the future.
          Answer(selectHandler: answerQuestion,), // A pointer at a function to a widget
          Answer(selectHandler: answerQuestion,), // 'answerQuestion' function can be forwarded to answer widget, without parentheses, because we don't want to execute this 'answerQuestion' function immediately, when dart reads this.
          Answer(selectHandler: answerQuestion,),
        */
        ],
      ),
    ),
    );
  }
}


