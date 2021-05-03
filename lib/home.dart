import 'package:flutter/material.dart';
import 'package:gp/GlobalComponents/custom_text.dart';
import 'package:gp/pages/profile/profile.dart';

import 'constraints.dart';

class Home extends StatefulWidget {
  @override
  final String appBarTitle;

  const Home({Key key, this.appBarTitle = 'Home'}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('Messgaes Screen'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.appBarTitle),
      ),
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
    );
  }
}
