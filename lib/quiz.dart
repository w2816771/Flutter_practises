import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {required this.questionList,
      required this.questionIndex,
      required this.answerQuestion});
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questionList[questionIndex]['questionText']),
        ...(questionList[questionIndex]['answers']as List<Map<String,dynamic>>)
            .map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
