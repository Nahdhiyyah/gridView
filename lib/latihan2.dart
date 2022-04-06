import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(icon: Icons.audiotrack, text: 'My Music', onTap: () => print('Tap My Files')),
          _drawerItem(icon: Icons.movie, text: 'My Movie', onTap: () => print('Tap Shared menu')),
          _drawerItem(icon: Icons.delete, text: 'Trash', onTap: () => print('Tap Trash menu')),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(icon: Icons.favorite, text: 'My Favorite', onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('assets/images/4.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: AssetImage('assets/images/5.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('Nad'),
    accountEmail: Text('nahdhiyyah13@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

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
