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
      {
      'questionText': 'Whats your favorite color',
      'answers':['black','red','Green','WHite'],
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers':['tiger','Monkey','Green','WHite'],
    },
    {
      'questionText': 'Whats your favorite city',
      'answers':['longdon','beijing','Green','WHite'],
    },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        children: [
          Questions(questionList[questionIndex]['questionText']),
          Answer(questions),
          Answer(questions),
          Answer(questions),
          
        ],
      ),
    ));
  }
}

void main() {
  runApp(Myapp());
}
