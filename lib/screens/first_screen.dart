import 'package:flutter/material.dart';
import 'package:new_app/screens/second_screen.dart';
import 'package:new_app/widgets/custom_drawer.dart';

import '../movie_card_list.dart';

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
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieCardList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }
}
