import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answersformuser;
  Answer(this.selectHandler, this.answersformuser);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            onPressed: selectHandler,
            color: Colors.purple,
            textColor: Colors.white,
            child: Text(answersformuser)));
  }
}
