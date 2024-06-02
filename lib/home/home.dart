import 'package:e_learning/book/book.dart';
import 'package:e_learning/kitab/Quran.dart';
import 'package:e_learning/laporan/Report_Quiz.dart';
import 'package:e_learning/quiz/soal.dart';
import 'package:flutter/material.dart';

class HOME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Home',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MenuHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MenuHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SMP.KU'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                MenuItem(
                  title: 'BUKU PAKET',
                  icon: Icons.library_books_rounded,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Buku()));
                  },
                ),
                MenuItem(
                  title: 'AL-QURAN',
                  icon: Icons.menu_book,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Quran()));
                  },
                ),
                MenuItem(
                  title: 'QUIZ',
                  icon: Icons.help,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuizListPage()));
                  },
                ),
                MenuItem(
                  title: 'NILAI',
                  icon: Icons.chrome_reader_mode_sharp,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ReportPage()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.green,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
