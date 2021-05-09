import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/custom_text.dart';
import 'package:gp/Size_Config.dart';
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

          selectedIconTheme: IconThemeData(color: kliteColor),
          unselectedIconTheme: IconThemeData(color: kSecondaryliteColor),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.home,
                  size: 30,
                )
              ),
              icon: Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.bookmark_outlined,
                  size: 30,
                )
              ),
              icon: Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.bookmark_outlined,
                  size: 30,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.all(3.0),
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

        ),
      ),
    );
  }
}
