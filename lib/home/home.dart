import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:saksham/home/counter.dart';

class Home extends StatefulWidget {
  final Widget child;
  Home({Key key, this.child}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {
    var piedata = [
      new Task('CS', 37.8, Colors.red),
      new Task('IT', 39.4, Colors.black),
      new Task('EC', 5.5, Colors.green),
      new Task('ME', 7.9, Colors.blueAccent),
      new Task('EN', 3.9, Colors.blue),
      new Task('CE/EI', 3.1, Colors.purple),
      new Task('MBA/MCA', 2.4, Colors.orange),
    ];

  _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) => charts.ColorUtil.fromDartColor(task.colorval),
        id: "Saksham",
        data: piedata,
         labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
            clipper: MyClipper(),
             child: 
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/cricket.jpg",
                    ),
                    fit: BoxFit.fill 
                  )
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Medal Tally",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold, 
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                ///Tally Table
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow : [
                        BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0,4),
                        blurRadius: 25,
                        ),
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                          Counter(
                            color1: Colors.red,
                            score1: 109,
                            branch1: "CS",
                            year: 2020,
                            gold1: 0,
                            silver1: 0,
                            bronze1: 0,
                            branch2: "IT",branch3: "ME",branch4: "EN",branch5: "CE/EI",branch6: "EC",branch7:"MBA/MCA",
                            gold2: 0,gold3: 0,gold4: 0,gold5: 0,gold6: 0,gold7: 0,
                            silver2: 0,silver3: 0,silver4: 0,silver5: 0,silver6: 0,silver7: 0,
                            bronze2: 0,bronze3: 0,bronze4: 0,bronze5: 0,bronze6: 0,bronze7: 0,
                            score2: 0,score3: 0,score4: 0,score5: 0,score6: 0,score7: 0 
                          ),
                          Counter(
                            color1: Colors.black,
                            score1: 100,
                            branch1: "IT",
                            year: 2019,
                            gold1: 0,
                            silver1: 0,
                            bronze1: 0,
                            branch2: "CS",branch3: "ME",branch4: "EN",branch5: "CE/EI",branch6: "EC",branch7:"MBA/MCA",
                            gold2: 0,gold3: 0,gold4: 0,gold5: 0,gold6: 0,gold7: 0,
                            silver2: 0,silver3: 0,silver4: 0,silver5: 0,silver6: 0,silver7: 0,
                            bronze2: 0,bronze3: 0,bronze4: 0,bronze5: 0,bronze6: 0,bronze7: 0,
                            score2: 0,score3: 0,score4: 0,score5: 0,score6: 0,score7: 0 
                          ),
                          Counter(
                            color1: Colors.yellow,
                            score1: 87,
                            branch1: "CE/EI",
                            year: 2018,
                            gold1: 0,
                            silver1: 0,
                            bronze1: 0,
                            branch2: "IT",branch3: "ME",branch4: "EN",branch5: "CS",branch6: "EC",branch7:"MBA/MCA",
                            gold2: 0,gold3: 0,gold4: 0,gold5: 0,gold6: 0,gold7: 0,
                            silver2: 0,silver3: 0,silver4: 0,silver5: 0,silver6: 0,silver7: 0,
                            bronze2: 0,bronze3: 0,bronze4: 0,bronze5: 0,bronze6: 0,bronze7: 0,
                            score2: 0,score3: 0,score4: 0,score5: 0,score6: 0,score7: 0 
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Who will be the Champion?",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold, 
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow : [
                          BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0,4),
                          blurRadius: 25,
                          ),
                        ]
                      ),
                      ///Polling
                    child: Center(
                    child: Column(
                      children: <Widget>[
                          SizedBox(height: 10.0,),
                            Expanded(
                              child: charts.PieChart(
                              _seriesPieData,
                              animate: true,
                              animationDuration: Duration(seconds: 5),
                              behaviors: [
                                new charts.DatumLegend(
                                outsideJustification: charts.OutsideJustification.endDrawArea,
                                horizontalFirst: false,
                                desiredMaxRows: 2,
                                cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                entryTextStyle: charts.TextStyleSpec(
                                  color: charts.MaterialPalette.purple.shadeDefault,
                                  fontFamily: 'Georgia',
                                  fontSize: 11
                                  ),
                                )
                              ],
                                defaultRenderer: new charts.ArcRendererConfig(
                                  arcWidth: 100,
                                    arcRendererDecorators: [
                                      new charts.ArcLabelDecorator(
                                        labelPosition: charts.ArcLabelPosition.inside
                                      )
                                    ]
                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]
                )
              ],
            ),
          )
       );
    }
}
          
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
      var path = Path();
      path.lineTo(0,size.height-80);
      path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-80);
      path.lineTo(size.width,0);
      path.close();
      return path;
    }

    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}