import 'package:e_learning/quiz/akar.dart';
import 'package:flutter/material.dart';

class QuizListPage extends StatelessWidget {
  final List<Map<String, String>> quizzes = [
    {'title': 'Matematika', 'description': 'Soal : 1 - 10'},
    {'title': 'Bahasa Indonesia', 'description': 'Soal : 1 - 10'},
    {'title': 'Bahasa Inggris', 'description': 'Soal : 1 - 10'},
    {'title': 'Sejarah', 'description': 'Soal : 1 - 10'},
    {'title': 'Sains', 'description': 'Soal : 1 - 10'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz List'),
      ),
      body: ListView.builder(
        itemCount: quizzes.length,
        itemBuilder: (ctx, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                quizzes[index]['title']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(quizzes[index]['description']!),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Soal(
                      title: quizzes[index]['title']!,
                      description: quizzes[index]['description']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
