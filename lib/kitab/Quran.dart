import 'package:e_learning/kitab/gamba1.dart';
import 'package:flutter/material.dart';

class Quran extends StatelessWidget {
  final List<Map<String, String>> quizzes = [
    {'title': 'Al-Fatihah', 'description': 'The Opening'},
    {'title': 'Al-Baqarah', 'description': 'The Cow'},
    {'title': 'Ali Imran', 'description': 'The Family of Imran'},
    {'title': 'An-Nisa', 'description': 'The Women'},
    {'title': 'Al-Maidah', 'description': 'The Table Spread'},
    {'title': 'Al-An am', 'description': 'The Cattle'},
    {'title': 'Al-A raf', 'description': 'The Heights'},
    {'title': 'Al-Anfal', 'description': 'The Spoils of War'},
    {'title': 'At-Tawbah', 'description': 'The Repentance'},
    {'title': 'Yunus ', 'description': 'Jonah'},
    {'title': 'Hud ', 'description': 'Hud'},
    {'title': 'Yusuf ', 'description': 'Joseph'},
    {'title': 'Ar-Ra d', 'description': 'The Thunder'},
    {'title': 'Ibrahim', 'description': 'Abraham'},
    {'title': 'Al-Hijr', 'description': 'The Rocky Tract'},
    {'title': 'An-Nahl', 'description': 'The Bee'},
    {'title': 'Al-Isra', 'description': 'The Night Journey'},
    {'title': 'Al-Kahf', 'description': 'The Cave'},
    {'title': 'Maryam ', 'description': 'Mary'},
    {'title': 'Ta-Ha', 'description': 'Ta-Ha'},
    {'title': 'Al-Anbiya', 'description': 'The Prophets'},
    {'title': 'Al-Hajj ', 'description': 'The Pilgrimage'},
    {'title': 'Al-Mu minun ', 'description': 'The Believers'},
    {'title': 'An-Nur ', 'description': 'The Light'},
    {'title': 'Al-Furqan ', 'description': 'The Criterion'},
    {'title': 'Ash-Shu ara', 'description': 'The Poets'},
    {'title': 'An-Naml ', 'description': 'The Ant'},
    {'title': 'Al-Qasas ', 'description': 'The Stories'},
    {'title': 'Al-Ankabut ', 'description': 'The Spider'},
    {'title': 'Ar-Rum ', 'description': 'The Romans'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quran Chapters'),
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
                    builder: (context) => Gambar1(),
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
