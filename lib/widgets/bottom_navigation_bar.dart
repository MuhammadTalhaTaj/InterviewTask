import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class NavigationB extends StatefulWidget {
  @override
  _NavigationBState createState() => _NavigationBState();
}

class _NavigationBState extends State<NavigationB> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List _widgetOptions = [
    HomeScreen(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
    Text(
      'Index 4: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),

          color: Colors.white,
          //borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.saved_search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_camera_back),
                label: 'Record',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.save_alt_rounded),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            unselectedItemColor: Colors.black54,
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xED185B51),
            onTap: _onItemTapped,
          ),
        ));
  }
}
