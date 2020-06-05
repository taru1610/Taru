import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saksham/styleguide.dart';
import 'app_state.dart';
import 'category_widget.dart';
import 'event_widget.dart';
import 'home_page_background.dart';
import 'model/categories.dart';
import 'model/event.dart';

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
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "SAKSHAM",
                            style: fadedTextStyle,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "NEWS",
                        style: whiteHeadingTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32.0,horizontal: 10.0),
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