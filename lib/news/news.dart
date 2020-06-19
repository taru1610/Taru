import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saksham/helper/data.dart';
import 'package:saksham/helper/news_data.dart';
import '../background.dart';
import 'category_widget.dart';
import 'event_widget.dart';

class News extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: <Widget>[
            HomePageBackground(
              screenHeight: MediaQuery.of(context).size.height,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "SAKSHAM ",
                            style:  TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          
                          Text(
                            "NEWS",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 10.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) => SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[for (final category in categories) CategoryWidget(category: category)],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) => Column(
                          children: <Widget>[
                            for (final event in events.where((e) => e.categoryIds.contains(appState.selectedCategoryId)))
                                EventWidget(
                                  event: event,
                                ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ), 
    );
  }
}