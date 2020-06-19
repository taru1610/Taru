import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'home/home.dart';
import 'news/news.dart';
import 'register.dart';
import 'schedule.dart';
import 'about.dart';

void main() {
  runApp(MyApp());
}
    
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.cyan[800] , accentColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 2;

  Widget tabs(int currentIndex){
    switch(currentIndex){
      case 0: return News();
      case 1: return Schedule();
      case 2: return Home();
      case 3: return Register();
      case 4: return About();
      default: return Home();
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
        tabs(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey[500],  
          currentIndex: _currentIndex,
          items:[
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.newspaper),
              title: Text("News"),
          ),

            BottomNavigationBarItem(
              icon: Icon(MdiIcons.calendarMonthOutline),
              title: Text("Schedule"),
          ),

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
          ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              title: Text("Register"),
          ),

            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              title: Text("About"),
          ),
        ],

        onTap: (index){
          setState(() {
             _currentIndex = index;
          });
        },
      ),
    );
  }
}
