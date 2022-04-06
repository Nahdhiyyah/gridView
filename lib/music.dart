import 'package:flutter/material.dart';

class music extends StatelessWidget {
  final List<String> lagu = [
    "Berisik",
    "Without You",
    "Up",
    "Hati-hati Di jalan",
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
        itemCount: lagu.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              title: Text(lagu[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
              subtitle: Text(artis[index]),
            ),
          );
        },
      ),
    );
  }
}
