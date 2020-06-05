import 'package:flutter/material.dart';
import 'register.dart';
import 'schedule.dart';

import 'about.dart';
import 'home.dart';
import 'news.dart';


void main() {
  runApp(MyApp());
}
    
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple , accentColor: Colors.white),
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
              //break;
      case 1: return Schedule();
              //break;
      case 2: return Home();
              //break;
      case 3: return Register();
              //break;
      case 4: return About();
              //break;
      default: return Home();
              //break;

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
              icon: Icon(Icons.new_releases),
              title: Text("News"),
          ),

            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
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
