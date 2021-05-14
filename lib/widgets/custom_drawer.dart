import 'package:flutter/material.dart';
import 'package:new_app/screens/first_screen.dart';
import 'package:new_app/screens/second_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              child: Image.asset(
                'assets/images/google-play-logo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          ListTile(
            title: Text('Screen 1'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => MyHome(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Screen 2'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => SecondScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
