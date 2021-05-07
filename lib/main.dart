import 'package:flutter/material.dart';

import 'movie_card_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Container(
          height: 30,
          child: Image.asset(
            'assets/images/google-play-logo.png',
            fit: BoxFit.cover,
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieCardList(),
          ],
        ),
      ),
    );
  }
}
