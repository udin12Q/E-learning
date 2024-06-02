import 'package:flutter/material.dart';

class Soal extends StatefulWidget {
  final String title;
  final String description;

  Soal({required this.title, required this.description});

  @override
  _SoalState createState() => _SoalState();
}

class _SoalState extends State<Soal> {
  final List<Map<String, Object>> questions = [
    {
      'questionText': 'What is 2 + 2?',
      'answers': ['3', '4', '5', '6'],
      'correctAnswer': '4',
    },
    {
      'questionText': 'What is the capital of France?',
      'answers': ['Berlin', 'Madrid', 'Paris', 'Lisbon'],
      'correctAnswer': 'Paris',
    },
  ];

  int _currentQuestionIndex = 0;
  int _score = 0;

  void _answerQuestion(String answer) {
    if (answer == questions[_currentQuestionIndex]['correctAnswer']) {
      setState(() {
        _score++;
      });
    }
    setState(() {
      _currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: _currentQuestionIndex < questions.length
            ? Quiz(
                question:
                    questions[_currentQuestionIndex]['questionText'] as String,
                answers:
                    questions[_currentQuestionIndex]['answers'] as List<String>,
                answerQuestion: _answerQuestion,
              )
            : Result(_score, questions.length),
      ),
    );
  }
}

class Quiz extends StatelessWidget {
  final String question;
  final List<String> answers;
  final Function(String) answerQuestion;

  Quiz({
    required this.question,
    required this.answers,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ...answers.map((answer) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                onPrimary: Colors.white,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              onPressed: () => answerQuestion(answer),
              child: Text(
                answer,
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}

class Result extends StatelessWidget {
  final int score;
  final int totalQuestions;

  Result(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your score is $score out of $totalQuestions',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
              onPrimary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
