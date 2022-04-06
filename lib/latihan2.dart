import 'package:flutter/material.dart';

// import 'music.dart';

class DrawerWidget extends StatelessWidget {
  final List<String> dataTeks = [
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3",
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3",
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3",
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3",
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3"
  ];

  final List<String> artis = [
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3",
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3",
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3",
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3",
    "Berisik.mp3",
    "Hati-hati Di Jalan.mp3"
  ];

  final List<String> gambar = [
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg",
    "assets/images/1.jpg",
  ];

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
              onTap: () => DefaultTabController(
                  length: 10,
                  child: Scaffold(
                    appBar: AppBar(
                      bottom: TabBar(tabs: [
                        Tab(icon: Icon(Icons.audiotrack), text: "My Music"),
                      ]),
                    ),
                    body: TabBarView(
                      children: <Widget>[
                        Scaffold(
                          body: ListView.builder(
                              itemCount: dataTeks.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: ListTile(
                                    leading: Icon(Icons.play_arrow, color: Colors.black),
                                    title: Text(dataTeks[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
                                    subtitle: Text(artis[index]),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ))),
          _drawerItem(
              icon: Icons.group,
              text: 'Shared with me',
              onTap: () => DefaultTabController(
                  length: 10,
                  child: Scaffold(
                    appBar: AppBar(
                      bottom: TabBar(tabs: [
                        Tab(icon: Icon(Icons.audiotrack), text: "My Music"),
                      ]),
                    ),
                    body: TabBarView(
                      children: <Widget>[
                        Scaffold(
                          body: ListView.builder(
                              itemCount: dataTeks.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: ListTile(
                                    leading: Icon(Icons.play_arrow, color: Colors.black),
                                    title: Text(dataTeks[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
                                    subtitle: Text(artis[index]),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ))),
          _drawerItem(
              icon: Icons.access_time,
              text: 'Recent',
              onTap: () => DefaultTabController(
                  length: 10,
                  child: Scaffold(
                    appBar: AppBar(
                      bottom: TabBar(tabs: [
                        Tab(icon: Icon(Icons.audiotrack), text: "My Music"),
                      ]),
                    ),
                    body: TabBarView(
                      children: <Widget>[
                        Scaffold(
                          body: ListView.builder(
                              itemCount: dataTeks.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: ListTile(
                                    leading: Icon(Icons.play_arrow, color: Colors.black),
                                    title: Text(dataTeks[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
                                    subtitle: Text(artis[index]),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ))),
          _drawerItem(
              icon: Icons.delete,
              text: 'Trash',
              onTap: () => DefaultTabController(
                  length: 10,
                  child: Scaffold(
                    appBar: AppBar(
                      bottom: TabBar(tabs: [
                        Tab(icon: Icon(Icons.audiotrack), text: "My Music"),
                      ]),
                    ),
                    body: TabBarView(
                      children: <Widget>[
                        Scaffold(
                          body: ListView.builder(
                              itemCount: dataTeks.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: ListTile(
                                    leading: Icon(Icons.play_arrow, color: Colors.black),
                                    title: Text(dataTeks[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
                                    subtitle: Text(artis[index]),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ))),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(icon: Icons.bookmark, text: 'Family', onTap: () => print('Tap Family menu')),
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
