import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/custom_text.dart';
import 'package:gp/pages/Home/Home.dart';
import 'package:gp/pages/profile/profile.dart';

import 'constraints.dart';

class MainApp extends StatefulWidget {
  @override


  const MainApp() : super();
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Profile Screen'),
    Profile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: _widgetOptions.elementAt(_selectedIndex),
        backgroundColor: Colors.grey[50],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kPrimaryColor,
          selectedIconTheme: IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Colors.blue),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomText(
                  alignment: Alignment.center,
                  fontSize: 15,
                  text: 'Home',
                  color: Colors.white,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomText(
                  alignment: Alignment.center,
                  fontSize: 15,
                  text: 'Messages',
                  color: Colors.white,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.message,
                  size: 30,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomText(
                  alignment: Alignment.center,
                  fontSize: 15,
                  text: 'Profile',
                  color: Colors.white,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
          selectedFontSize: 13.0,
          unselectedFontSize: 13.0,
        ),
      ),
    );
  }
}
