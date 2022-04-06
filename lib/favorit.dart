import 'package:flutter/material.dart';

class favorit extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg"
  ];

  final List<String> judul = [
    "Hati-hati Di Jalan",
    "Happy",
    "Attention"
  ];

  final List<String> artis = [
    "Tulus",
    "Skinnyfabs",
    "Charlie Puth"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            child: ListView(
      children: [
        ListTile(
          leading: Icon(Icons.play_arrow),
          title: Text('Berisik', style: TextStyle(fontSize: 17)),
        ),
        ListTile(
          leading: Icon(Icons.play_arrow),
          title: Text('Without You', style: TextStyle(fontSize: 17)),
        ),
        ListTile(
          leading: Icon(Icons.movie),
          title: Text('Up', style: TextStyle(fontSize: 17)),
        ),
        ListTile(
          leading: Icon(Icons.movie),
          title: Text('Hati-hati Di Jalan', style: TextStyle(fontSize: 17)),
        ),
        ListTile(
          leading: Icon(Icons.play_arrow),
          title: Text('Happy', style: TextStyle(fontSize: 17)),
        ),
        ListTile(
          leading: Icon(Icons.movie),
          title: Text('Attention', style: TextStyle(fontSize: 17)),
        ),
      ],
    )));
  }
}
