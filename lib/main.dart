import 'package:flutter/material.dart';
import 'drawNav.dart';

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
              backgroundColor: Colors.black,
              bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  new Tab(icon: Icon(Icons.audiotrack), text: "My Music"),
                  new Tab(icon: Icon(Icons.movie), text: "My Movie"),
                  new Tab(icon: Icon(Icons.favorite), text: "My Favorite")
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
