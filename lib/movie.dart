import 'package:flutter/material.dart';

class movie extends StatelessWidget {
  final List<String> foto = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg"
  ];
  final List<String> judul = [
    "Berisik",
    "Without You",
    "Up",
    "Hati-hati Di Jalan",
    "Happy",
    "Attention"
  ];

  final List<String> artis = [
    "Dere",
    "Avicii",
    "Inna",
    "Tulus",
    "Skinnyfabs",
    "Charlie Puth"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(foto[index], width: 50, height: 50, fit: BoxFit.cover),
              title: Text(judul[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
              subtitle: Text(artis[index]),
            ),
          );
        },
      ),
    );
  }
}
