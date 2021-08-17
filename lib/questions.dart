import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final questionText;
  Questions(this.questionText);
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
