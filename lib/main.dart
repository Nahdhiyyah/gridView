import 'package:flutter/material.dart';
import 'latihan2.dart';

void main() {
  runApp(MaterialApp(
    title: "BelajarFlutter.com",
    home: BelajarNavigationDrawer(),
    debugShowCheckedModeBanner: false,
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Nadia's List"),
              bottom: TabBar(
                tabs: [
                  new Tab(icon: Icon(Icons.audiotrack), text: "My Music"),
                  new Tab(icon: Icon(Icons.movie), text: "My Movie"),
                  new Tab(icon: Icon(Icons.favorite), text: "Favorite")
                ],
              ),
            ),
            drawer: DrawerWidget(),
            body: TabBarView(
              children: <Widget>[
                new music(),
                new movie(),
                new favorit()
              ],
            )));
  }
}
