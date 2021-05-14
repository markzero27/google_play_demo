import 'package:flutter/material.dart';
import 'package:new_app/screens/first_screen.dart';
import 'package:new_app/widgets/custom_drawer.dart';

class SecondScreen extends StatelessWidget {
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
      body: Center(
        child: Text('Second Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => MyHome(),
            ),
          );
        },
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.green,
      ),
    );
  }
}
