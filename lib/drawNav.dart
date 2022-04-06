import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.audiotrack,
              text: 'My Music',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.movie,
              text: 'My Movie',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.favorite,
              text: 'My Favorite',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Others",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(icon: Icons.delete, text: 'Trash', onTap: () => print("Dokumen telah terhapus karena sudah melebihi batas maksimal pemindahan")),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.black),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/kiyowo.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('assets/images/5.jpg'), fit: BoxFit.cover),
      ),
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
  final List<String> foto = [
    "assets/images/berisik.jpg",
    "assets/images/without you.jpg",
    "assets/images/thousand year.jpg",
    "assets/images/hati-hati di jalan.jpg",
    "assets/images/happy.jpg",
    "assets/images/attention.jpg",
    "assets/images/we dont.jpg",
    "assets/images/swy.jpg",
    "assets/images/zoo.jpg",
    "assets/images/starlight.jpg"
  ];
  final List<String> judul = [
    "Berisik.mp3",
    "Without You.mp3",
    "A Thousand Years.mp3",
    "Hati-hati Di Jalan.mp3",
    "Happy.mp3",
    "Attention.mp3",
    "We Don't Talk Anymore.mp3",
    "Still With You.mp3",
    "Zoo.mp3",
    "Starlight.mp3"
  ];

  final List<String> artis = [
    "Dere",
    "Avicii",
    "Inna",
    "Tulus",
    "Skinnyfabs",
    "Charlie Puth",
    "Charlie Puth",
    "Jungkook-BTS",
    "NCT",
    "Chani-SF9"
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
                title: Text(judul[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
                subtitle: Text(artis[index]),
                trailing: Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                )),
          );
        },
      ),
    );
  }
}

class movie extends StatelessWidget {
  final List<String> foto = [
    "assets/images/Extraordinary You.jpg",
    "assets/images/bad jenius.jpg",
    "assets/images/davinci.jpg",
    "assets/images/dunkirk.jpg",
    "assets/images/insidious.jpg",
    "assets/images/mr queen.jpeg",
    "assets/images/terlalu tampan.jpg",
    "assets/images/train.jpg",
    "assets/images/true beauty.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          foto.length,
          (index) {
            return Card(
              child: Image.asset(
                foto[index],
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}

class favorit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            child: ListView(
      children: [
        ListTile(
          leading: Icon(Icons.play_arrow, color: Colors.black),
          title: Text('Berisik.mp3', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.play_arrow, color: Colors.black),
          title: Text('Without You.mp3', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.movie, color: Colors.black),
          title: Text('Bed Jenius.mp4', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.movie, color: Colors.black),
          title: Text('True Beauty.mp4', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.play_arrow, color: Colors.black),
          title: Text('Happy.mp3', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.movie, color: Colors.black),
          title: Text('Extraordinary You.mp4', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.play_arrow, color: Colors.black),
          title: Text('Hati-hati di Jalan.mp3', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.play_arrow, color: Colors.black),
          title: Text('A Thousand Years.mp3', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.movie, color: Colors.black),
          title: Text('Terlalu Tampan.mp4', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.movie, color: Colors.black),
          title: Text('Train to Busan', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.play_arrow, color: Colors.black),
          title: Text('Attention.mp3', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: Icon(Icons.movie, color: Colors.black),
          title: Text('Insidious.mp4', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
      ],
    )));
  }
}