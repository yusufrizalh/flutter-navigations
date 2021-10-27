// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  // constructor dalam bentuk constant
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // inisialisasi nilai awal
  int _selectedIndex = 0;

  static const List<Widget> _menus = <Widget>[
    Icon(
      Icons.person,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.camera_alt,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Bottom NavBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // isian dari Tab
            _menus.elementAt(_selectedIndex),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.amberAccent, size: 40.0),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        mouseCursor: SystemMouseCursors.grab,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt), label: 'Gallery'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapItem,
      ),
    );
  }

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
