import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'griddashboard.dart';

class Schedule extends StatefulWidget{
  @override
  ScheduleState createState() => ScheduleState();
}

class ScheduleState extends State<Schedule>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/background.jpg"), 
            )
          ),
          child:Column(
            children: <Widget>[
            SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Schedule",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 44,
                            fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                        SizedBox(height: 4),
                      ],
                    ),
                    IconButton(
                      alignment: Alignment.topCenter,
                      icon: Image.asset("assets/cricket.jpg",
                        width: 24,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              GridDashboard(),
              ],
            ),
      ),
    );
  }
}