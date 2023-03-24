import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  // gettter : it's a special type of property, it's basically a mixture
  // of property and method,
  // Unlike in method you don't add () because a getter is like a
  // method that can never receive any arguments , you do add a body
  // tough and in that body you to return a string
  // But you use it like a normal property
  ///
  /// Its just Dart feature
  /// it's a normal property but the value is calculated dynamically
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // output different "texts" here based on the result's score
    return Center(
        // Column() by default all the available height of the viewport
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          textAlign: TextAlign.center, // center the text
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold, // FontWight is grouper class which
            // groups a couple of predefined values and that is basically a
            // value that instructs Flutter to turn this text to bold text.
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
          ),
          onPressed: resetQuizHandler,
          child: Text('Restart Quiz'),
        )
      ],
    ));
  }
}
// on the result screen we need a button we can press to reset our 
// question progress and for that we need to add a button below Text

//?? How do we add things below other things(Widgets below other widgets)
// we need a Column()