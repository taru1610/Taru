import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Counter extends StatelessWidget {
  final int score1,score2,score3,score4,score5,score6,score7;
  final int gold1,gold2,gold3,gold4,gold5,gold6,gold7;
  final int silver1,silver2,silver3,silver4,silver5,silver6,silver7;
  final int bronze1,bronze2,bronze3,bronze4,bronze5,bronze6,bronze7;
  final Color color1,color2,color3,color4,color5,color6,color7;
  final String branch1,branch2,branch3,branch4,branch5,branch6,branch7;
  final int year;

  const Counter({
    Key key,  this.year, this.score1, this.score2, this.score3, this.score4, this.score5, this.score6, this.score7, this.color1, this.color2, this.color3, this.color4, this.color5, this.color6, this.color7, this.branch1, this.branch2, this.branch3, this.branch4, this.branch5, this.branch6, this.branch7, this.gold1, this.gold2, this.gold3, this.gold4, this.gold5, this.gold6, this.gold7, this.silver1, this.silver2, this.silver3, this.silver4, this.silver5, this.silver6, this.silver7, this.bronze1, this.bronze2, this.bronze3, this.bronze4, this.bronze5, this.bronze6, this.bronze7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color1.withOpacity(.25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: color1,
                      width: 2,
                    )
                  )
                ),
              )
            ),
          ),
          SizedBox(height: 10),
          Text("$score1",
            style: TextStyle(
              color: color1,
              fontSize: 40,
            )
          ),
          Text(branch1,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
            ),
          ),
          SizedBox(height: 2),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            onPressed: (){
              showDialog(
                context: context,
                builder :(context){
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Container(
                      height:450,
                      child: Column(
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text("$year",
                              style: TextStyle(
                                fontSize: 30,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                              child: DataTable(
                                columnSpacing: 20,
                                dataRowHeight: 35,
                                columns: <DataColumn>[
                                  DataColumn(
                                    label: Text("Branch",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black,
                                      )
                                    )
                                  ),
                                  DataColumn(
                                    label: FaIcon(FontAwesomeIcons.medal,color: Colors.yellow[600]),
                                  ),
                                  DataColumn(
                                    label: FaIcon(FontAwesomeIcons.medal,color: Colors.grey),
                                  ),
                                  DataColumn(
                                    label: FaIcon(FontAwesomeIcons.medal,color: Colors.orange[900]),
                                  ),
                                  DataColumn(
                                    label: Text("Score",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black,
                                      )
                                    )
                                  ),
                                ], 
                                rows: <DataRow>[
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Text(branch1,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                     DataCell(
                                        Text("$gold1"),
                                      ),
                                      DataCell(
                                        Text("$silver1"),
                                      ),
                                      DataCell(
                                        Text("$bronze1"),
                                      ),
                                      DataCell(
                                        Text("$score1",
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ]
                                  ),
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Text(branch2,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text("$gold2"),
                                      ),
                                      DataCell(
                                        Text("$silver2"),
                                      ),
                                      DataCell(
                                        Text("$bronze2"),
                                      ),
                                      DataCell(
                                        Text("$score2",
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ]
                                  ),
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Text(branch3),
                                      ),
                                      DataCell(
                                        Text("$gold3"),
                                      ),
                                      DataCell(
                                        Text("$silver3"),
                                      ),
                                      DataCell(
                                        Text("$bronze3"),
                                      ),
                                      DataCell(
                                        Text("$score3",
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ]
                                  ),
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Text(branch4,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text("$gold4"),
                                      ),
                                      DataCell(
                                        Text("$silver4"),
                                      ),
                                      DataCell(
                                        Text("$bronze4"),
                                      ),
                                      DataCell(
                                        Text("$score4",
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ]
                                  ),
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Text(branch5,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text("$gold5"),
                                      ),
                                      DataCell(
                                        Text("$silver5"),
                                      ),
                                      DataCell(
                                        Text("$bronze5"),
                                      ),
                                      DataCell(
                                        Text("$score5",
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ]
                                  ),
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Text(branch6,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text("$gold6"),
                                      ),
                                      DataCell(
                                        Text("$silver6"),
                                      ),
                                      DataCell(
                                        Text("$bronze6"),
                                      ),
                                      DataCell(
                                        Text("$score6",
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ]
                                  ),
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Text(branch7,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text("$gold7"),
                                      ),
                                      DataCell(
                                        Text("$silver7"),
                                      ),
                                      DataCell(
                                        Text("$bronze7"),
                                      ),
                                      DataCell(
                                        Text("$score7",
                                          style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ]
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 200,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                color: Theme.of(context).primaryColor,

                              ),
                            )
                          ],
                        ),
                    ),
                  );
                }
              );
            },
            color: Theme.of(context).primaryColor,
            child: Text("$year",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )
            ),
          )
        ],
      ),
    );
  }
}