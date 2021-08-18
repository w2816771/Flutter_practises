import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';

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
      'answers': ['black', 'red', 'Green', 'WHite'],
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': ['tiger', 'Monkey', 'Green', 'WHite'],
    },
    {
      'questionText': 'Whats your favorite city',
      'answers': ['longdon', 'beijing', 'Green', 'WHite'],
    },
  ];
  var questionIndex = 0;
  void questions() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);

    if (questionIndex <= questionList.length- 1) {
      print('we have more questiosn');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('My App'),
      ),
      body: questionIndex < questionList.length ? Column(
        children: [
          Questions(questionList[questionIndex]['questionText']),
          ...(questionList[questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(questions, answer);
          }).toList()
        ],
      ) : Center(child: Text('you didit'),)
    ));
  }
}

void main() {
  runApp(Myapp());
}
