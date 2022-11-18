import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DDD2022',
      home: Chatscreen(),
    );
  }
}

class Chatscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: .6,
        title: Text(
          'Messages',
          style: TextStyle(color: Colors.black87),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.black87,
              onPressed: () {}),
        ],
      ),
      body: SafeArea(
        child: ListView(children: <Widget>[
          ListTile(
            leading: CircleAvatar(),
            trailing: Text('3分前'),
            title: Text('Apples'),
            subtitle: Text('DDD楽しい'),
          ),
          ListTile(
            leading: CircleAvatar(),
            trailing: Text('3分前'),
            title: Text('Apples'),
            subtitle: Text('DDD楽しい'),
          ),
          ListTile(
            leading: CircleAvatar(),
            trailing: Text('3分前'),
            title: Text('Apples'),
            subtitle: Text('DDD楽しい'),
          ),
        ]),
      ),
    );
  }
}
