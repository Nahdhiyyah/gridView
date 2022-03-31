import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Flutter'),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          height: 200,
          width: 200,
          alignment: Alignment.topLeft,
          color: Colors.red,
          child: Text(
            'Tahapan awal',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
    );
  }
}
