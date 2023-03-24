import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final tell Dart that questionText value will never change after
  // its initialization here in the constructor
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      // double.infinity gives a width that ensures
      // that the container takes as much size and much midth it can get
      width: double.infinity,
      // as the container takes the full width of the screen now
      // and therefor Text() automatically takes the full width of the container
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
