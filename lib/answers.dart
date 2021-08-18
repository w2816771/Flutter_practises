import 'package:flutter/material.dart';
import 'questions.dart';
import 'main.dart';

class Answer extends StatelessWidget {
  
  final VoidCallback selectHandler;
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            onPressed:selectHandler, 
            color: Colors.purple, 
            child: Text('ssssss')
            )
            );
            }
}
