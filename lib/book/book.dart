import 'package:e_learning/book/Pdf_view.dart';
import 'package:flutter/material.dart';

class Buku extends StatelessWidget {
  final List<Map<String, String>> quizzes = [
    {'title': 'Bahasa Indonesia', 'description': 'by user'},
    {'title': 'Matematika', 'description': 'by user'},
    {'title': 'Bahasa Inggris', 'description': 'by user'},
    {'title': 'Sejarah ', 'description': 'by user'},
    {'title': 'Sains ', 'description': 'by user'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Mata Pelajaran'),
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
              subtitle: Text(
                quizzes[index]['description']!,
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pdf(),
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
