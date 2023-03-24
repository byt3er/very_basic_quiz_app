import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final VoidCallback selectHandler//

  final VoidCallback selectHandler; // what is store has to be pointer to a function
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        // provide the name of the function not the result
        onPressed: selectHandler,
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(Colors.green)),
      ),
    );
  }
}
