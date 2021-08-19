import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  Result(this.totalScore, this.resetQuiz);
  String get comments {
    var resultScore = totalScore;
    if (resultScore < 8) {
      return 'You are awesome and innocent!';
    } else if (resultScore < 12) {
      return 'Pretty likeable!';
    }else{
      return 'You are ... strange?!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: [
        Text(
          'Your final Socre is $totalScore',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        Text(
          comments,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(onPressed: resetQuiz, child: Text('Reset Quiz'))
      ]),
    );
  }
}
