// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_navigation/bottomnavbar.dart';
import 'package:flutter_navigation/navdrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'Belajar Navigation',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: OpenNavDrawer(),
    ));
  }
}

class OpenNavDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Custom NavDrawer'),
        leading: IconButton(
          onPressed: () {
            print('Menekan Menu');
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
      ),
      drawer: NavDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Belajar Custom Nav Drawer'),
          ],
        ),
      ),
    );
  }
}

class SimpleNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Simple Navigation',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
            ),
            Text('Home Page'),
            Padding(
              padding: EdgeInsets.all(12.0),
            ),
            ElevatedButton(
              onPressed: () {
                // membuat navigation
                Route myRoute = MaterialPageRoute(
                  builder: (context) => AboutPage(),
                );
                Navigator.push(context, myRoute);
              },
              child: Text('Tap to About page'),
            ),
          ],
        ),
      ),
    ));
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('About Page'),
            Padding(
              padding: EdgeInsets.all(12.0),
            ),
            ElevatedButton(
              onPressed: () {
                // membuat navigation kembali ke halaman sebelumnya
                Navigator.pop(context);
              },
              child: Text('Tap to Home page'),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
            ),
            ElevatedButton(
              onPressed: () {
                // membuat navigation ke gallery page
                Route myRoute = MaterialPageRoute(
                  builder: (context) => GalleryPage(),
                );
                Navigator.push(context, myRoute);
              },
              child: Text('Tap to Gallery page'),
            )
          ],
        ),
      ),
    ));
  }
}

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Gallery Page',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ));
  }
}
