import 'package:flutter/material.dart';
import 'package:flutter_complte_practise/result.dart';
import 'quiz.dart';

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Myapp> {
  static const questionList = [
    {
      'questionText': 'Whats your favorite color',
      'answers': [
        {'text': 'Black', 'score': 10}, 
        {'text': 'Red', 'score': 5},
        {'text': 'orgin', 'score': 2},
        {'text': 'yellow', 'score': 8}
        ]
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 8}
      ],
    },
    {
      'questionText': 'Whats your favorite city',
      'answers': [
        {'text': 'Delhi', 'score': 10},
        {'text': 'Mumbai', 'score': 5},
        {'text': 'Chennai', 'score': 2},
        {'text': 'Banglore', 'score': 8}
      ],
    },
  ];

  var questionIndex = 0;
  var socre;
  var totalscore =0;
  
  void answerQuestion(int score) {
    setState(() {
      totalscore += score;
      questionIndex++;
    });
    print(questionIndex);

    if (questionIndex <= questionList.length- 1) {
      print('we have more questiosn');
    }
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('My App'),
      ),
      body: questionIndex < questionList.length ? 
      Quiz(
        questionList:questionList,
        questionIndex:questionIndex,
        answerQuestion:answerQuestion,)
      : Result(totalscore,resetQuiz)

    ));
  }
}

void main() {
  runApp(Myapp());
}
