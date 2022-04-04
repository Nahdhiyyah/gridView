import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                    expandedHeight: 200.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: Text("Belajar Sliver App Bar",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            )),
                        background: Image(
                          image: AssetImage('assets/images/1.jpg'),
                          fit: BoxFit.cover,
                        )))
              ];
            },
            body: Center(
              child: Text("Gambar Kiyowo"),
            )));
  }
}
