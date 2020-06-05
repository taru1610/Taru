
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Schedulenote.dart';

class Items {
  String title;
  String description;
  String img;
  Items({this.title, this.description, this.img});
}

List<Items> items = [
  Items(
    title: 'Cricket',
    img: "assets/cricket.jpg",
    description: "bat-and-ball",
    ),
   Items(
    title: 'Football',
    img: "assets/cricket.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Basketball',
    img: "assets/cricket.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Kabaddi',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Table Tennis',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Athletics',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Badminton',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Powerlifting',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Carrom',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Chess',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
   Items(
    title: 'Tug of War',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Pool',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Kho Kho',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Volleyball',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
    Items(
    title: 'Obstacle Race',
    img: "assets/background.jpg",
    description: "Bat Ball",
    ),
];

class GridDashboard extends StatefulWidget{
  @override
  GridDasdboardState createState() => GridDasdboardState();
}

class  GridDasdboardState extends State<GridDashboard> {
  List<Schedulenote> _schedulenotes = List<Schedulenote>();

Future<List<Schedulenote>> fetchSchedulenote() async{
  var url = 'https://github.com/tanyaagar/saksham-app/blob/master/sampleSCHEDULE.json' ;
  var response = await http.get(url);

  var schedulenotes = List<Schedulenote>();

  if(response.statusCode == 200){
    var schedulenotesJson = json.decode(response.body);
    for(var schedulenoteJson in schedulenotesJson){
      schedulenotes.add(Schedulenote.fromJson(schedulenoteJson));
    }
  }
  return schedulenotes;
}
  @override
  void initState(){
    fetchSchedulenote().then((value){
      setState((){
        _schedulenotes.addAll(value);
        });                          
      });
      super.initState();
  }


  @override
  Widget build(BuildContext context) {
    fetchSchedulenote().then((value){
      setState((){
        _schedulenotes.addAll(value);
        });                          
      });
    var color = 0xff453658;
    return Flexible(
      child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          ),
          padding: EdgeInsets.only(left: 16, right: 16),
          itemBuilder: (context,index){
          
          return GestureDetector(
          child: Container(
          decoration: BoxDecoration(
            color: Color(color), 
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Image.asset(
          items[index].img,
          height: 100,
          width: 60,
          ),
          SizedBox(height: 14),
          Text(
            items[index].title,
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600
            )
          ),
        ),
        SizedBox(height: 8),
        Text(
          items[index].description,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
            color: Colors.white70,
            fontSize: 11,
            fontWeight: FontWeight.w600
            )
          ),
        ),
      ],
    ),
  ),
  onTap: (){
  showDialog(
   barrierDismissible : false,
   context: context,
   child: CupertinoAlertDialog(
   title:  ListView.builder(
    itemCount: _schedulenotes.length,
    padding: EdgeInsets.only(left: 16, right: 16),
    itemBuilder: (context,index){
      return Container(
        child: Column(
        children: <Widget>[
        Text(
          _schedulenotes[index].sportName,
           style: GoogleFonts.openSans(
            textStyle: TextStyle(
            color: Colors.purple,
            fontSize: 10,
            fontWeight: FontWeight.w600
            )
          ),
        ),
        SizedBox(height: 10),
        Text(
          _schedulenotes[index].branch1,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
            color: Colors.purple,
            fontSize: 8,
            fontWeight: FontWeight.w600
            )
          ),
        ),
        Text(
          _schedulenotes[index].branch2,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
            color: Colors.purple,
            fontSize: 8,
            fontWeight: FontWeight.w600
            )
          ),
        ),
        Text(
          _schedulenotes[index].date,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
            color: Colors.purple,
            fontSize: 8,
            fontWeight: FontWeight.w600
            )
          ),
        ),
        Text(
          _schedulenotes[index].timestart,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
            color: Colors.purple,
            fontSize: 8,
            fontWeight: FontWeight.w600
            )
          ),
        ),
        Text(
          _schedulenotes[index].timeEnd,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
            color: Colors.purple,
            fontSize: 8,
            fontWeight: FontWeight.w600
            )
          ),
        ),
        Text(
          _schedulenotes[index].venue,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
            color: Colors.purple,
            fontSize: 8,
            fontWeight: FontWeight.w600
            )
          ),
        ),
        ],
      )
    );
  }
),
                    content: Text(items[index].title),
                    actions: <Widget>[
                    FlatButton(
                    onPressed : () {
                    Navigator.of(context).pop();
                    } ,
                    child: Text("OK"),
                    )
                  ],
                )
              );
            },
          );
        }
      )
    );
  }
              
}
