import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  final List<Map<String, dynamic>> studentScores = [
    {'name': 'Udin', 'Mapel': 'Matematika', 'score': 90},
    {'name': 'Ari', 'Mapel': 'Bahasa Inggris', 'score': 99},
    {'name': 'Anto', 'Mapel': 'Sains ', 'score': 89},
    {'name': 'Matcha', 'Mapel': 'Sejarah ', 'score': 79},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai Murid'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hasil',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: studentScores.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name: ${studentScores[index]['name']}',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Mapel: ${studentScores[index]['Mapel']}',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Hasil: ${studentScores[index]['score']}',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.grade,
                          color:
                              _getColorForScore(studentScores[index]['score']),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Color _getColorForScore(int score) {
    if (score >= 90) {
      return Colors.green;
    } else if (score >= 80) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }
}
