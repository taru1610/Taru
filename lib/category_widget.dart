import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:saksham/styleguide.dart';

import 'app_state.dart';
import 'model/categories.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;

  const CategoryWidget({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          appState.updateCategoryId(category.categoryId);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 120,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.white : Color(0x99FFFFFF), width: 3),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: isSelected ? Colors.white : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              category.icon,
              height: 40,
              width: 40,
              fit: BoxFit.fitWidth,
              color: isSelected ? Theme.of(context).primaryColor : Colors.white ,
            ),
            SizedBox(height: 10,),
            Text(
              category.name,
              style: isSelected ? selectedCategoryTextStyle : categoryTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
