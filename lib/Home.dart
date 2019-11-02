import 'package:codedecoders/Subscription.dart';
import 'package:codedecoders/reusable/youtube.dart';
import 'package:flutter/material.dart';

import 'Trending.dart';

class Youtube extends StatefulWidget {
  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    YoutubeBody(),
    Trending(),
    Subscription(),
    Container(),
  ];

  void onTabTapped(int index){
    setState(() {
     _currentIndex = index; 
    });
  }

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _children[_currentIndex],
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Image.asset('assets/logo.png'),
          ),
          elevation: 0.5,
          title: Text(
            'Youtube',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.search, color: Colors.black),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: onTabTapped,
            fixedColor: Colors.red,
            iconSize: 24.0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.whatshot),
                title: Text('Trending'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Subscriptions'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.folder),
                title: Text('Library'),
              ),
            ]),
      ),
    );
  }
}
