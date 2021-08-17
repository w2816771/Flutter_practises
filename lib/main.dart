import 'package:flutter/material.dart';
import 'questions.dart';





class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<Myapp> {
  var questionIndex = 0;
  void questions() {
    setState(() {
    questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questionList = [
      'whats your best mate here',
      'whats your best color here',
      'whats your best favourite here',
      'whats your best suit here',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        children: [
          Questions(questionList[questionIndex]),
          ElevatedButton(
            onPressed: () => print('question_1_answered'),
            child: Text('question_1'),
            autofocus: true,
          ),
          ElevatedButton(
            onPressed: questions,
            child: Text('question_2'),
            autofocus: true,
          ),
          ElevatedButton(onPressed: questions, child: Text('question_3')),
          ElevatedButton(onPressed: questions, child: Text('question_4')),
        ],
      ),
    ));
  }
}

void main() {
  runApp(Myapp());
}
