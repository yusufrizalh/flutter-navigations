// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // isian menu dari navdrawer
          // header
          drawerHeader(context),
          // draweritem
          drawerItem(Icons.folder_shared_outlined, 'Files', () {
            print('Menekan Menu Files');
          }),
          drawerItem(Icons.share_outlined, 'Share', () {
            print('Menekan Menu Share');
          }),
          drawerItem(Icons.access_alarms_outlined, 'Recent', () {
            print('Menekan Menu Recent');
          }),
          drawerItem(Icons.delete_outline_outlined, 'Trash', () {
            print('Menekan Menu Trash');
          }),
          Divider(
            height: 24.0,
            thickness: 6,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 10.0,
              bottom: 10.0,
            ),
          ),
          drawerItem(Icons.bookmark_outline_outlined, 'Bookmark', () {
            print('Menekan Menu Bookmark');
          }),
        ],
      ),
    );
  }

  Widget drawerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text('Yusuf Rizal H.'),
      accountEmail: Text('yusufrizalh@email.com'),
      currentAccountPicture: GestureDetector(
        onTap: () {
          // route menuju detail account
        },
        child: ClipOval(
          child: Image(
            image: AssetImage('assets/images/user_1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      otherAccountsPictures: <Widget>[
        ClipOval(
          child: Image(
            image: AssetImage('assets/images/user_2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        ClipOval(
          child: Image(
            image: AssetImage('assets/images/user_3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget drawerItem(IconData icon, String text, GestureTapCallback onTap) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
