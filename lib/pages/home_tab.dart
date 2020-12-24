import 'package:flutter/material.dart';
import 'package:my_profile/tabs/about_tab.dart';
import 'package:my_profile/tabs/blog_tab.dart';
import 'package:my_profile/tabs/projects_tab.dart';


class HomePage extends StatefulWidget{

  @override
  // ignore: missing_return
  _HomePageState createState() {
    _HomePageState();
  }

}

class _HomePageState extends State<HomePage>{

  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    BlogTab(),
    ProjectsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            label: 'Projects' ,
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (index)=> setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }

}