import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quizz extends StatelessWidget {
  final Function answerQuestion; // what is store has to be pointer to a function

  // nested generic assignment
  final List<Map<String, Object>> questions;

  final int questionIndex;

  // construtor with named arguments
  Quizz({
    // @required is a decorator provided by material.dart and it basically
    // tells flutter that all these values are requied and we must not omit
    // a single one of them.

    // If we tried to create this quizz widget with only one or two or none
    // of these argument we would get an error
    @required this.answerQuestion,
    @required this.questions,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          // () => answerQuestion() 
          // by this I created this func on the fly, stored in memory and 
          // instead  of storing it in a variable which then holds the address
          // which I could use here, I automatically get back the address
          // here and I forward that to answer widget
          // 
          // Now here my Anwser() widget still gets a function which
          // takes no arguments and does something

          // But on the right side (=> answerQuestion()) I no longer want
          // to just use the address, here I instead want to call answerQuestion(),
          // Because this is now no executed when Dart parses this, there it 
          // will now create this anonymous function and store it in memory
          // ()=> answerQuestion() is executed when <onPressed:> is triggred
          // because it's an anonymous function where I forward the address to 
          // Answer() and the address is bound to button and when the button is 
          // pressed this address is used to execute this anonymous function.
          // answerQuestion() is only triggered when the button is pressed.

          return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
