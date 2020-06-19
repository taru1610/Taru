import 'package:flutter/material.dart';
import 'package:saksham/helper/news_data.dart';

class EventWidget extends StatelessWidget {
  final Event event;

  const EventWidget({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          showDialog(
          context: context,
          builder :(context){
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width-50,
                height:MediaQuery.of(context).size.height-229,
                color: Colors.white,
                child: Column(
                    children: [
                      Container(
                        height:MediaQuery.of(context).size.height * 0.40,
                        width:MediaQuery.of(context).size.width-50,
                        child: Image.asset(
                          event.imagePath,
                          fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 10),
                        Material(
                        type: MaterialType.transparency,
                        child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(9),
                            child: Column(children: <Widget>[
                               Center(
                                  child: Text(
                                    event.team,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight:FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Padding(
                                    padding: EdgeInsets.all(9),
                                      child: Text(
                                        event.description,
                                        style: TextStyle(fontSize:15),
                                      ),
                                    )
                                  ]
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Center(
                                child: SizedBox(
                                  height: 40,
                                  width: 250.0,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    color: Colors.black,
                                    child: Text("Close",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      ),
                                    ),
                                    splashColor: Colors.red,
                                  ),
                                ),
                              )
                            ),
                          )
                        ],
                      ),
                  ),
                );
              });
            },
            child: Card( 
              margin: const EdgeInsets.symmetric(vertical: 20),
              elevation: 4,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20),
                          ),
                          child: Image.asset(
                            event.imagePath,
                            height: 200,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 15.0,bottom: 10,),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                      Text(
                                        event.title,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20
                                        ),
                                      ),
                                      SizedBox(height: 10,),  
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ),
                      ),
                    );
                  }
               }
                                                
 