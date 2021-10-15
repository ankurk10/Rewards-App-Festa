import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({required Key key}) : super(key: key);

  @override
  _bottom_navState createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    //Home(),
    Text('Messgaes Screen'),
    Text('Profile Screen'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            title: Text(
              'Messages',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              'Profile',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
