import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:saksham/helper/data.dart';
import '../style.dart';

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
        width: 110,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.white : Color(0x99FFFFFF), width: 3),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: isSelected ? Colors.white : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              category.icon,
              color: isSelected ? Theme.of(context).primaryColor : Colors.white,
              size: 40,
            ),
            SizedBox(height: 5,),
            Text(
              category.title,
              style: isSelected ? selectedCategoryTextStyle : categoryTextStyle,
            )
          ],
        ),
      ),
    );
  }
}

class AppState extends ChangeNotifier {

  int selectedCategoryId = 0;

  void updateCategoryId(int selectedCategoryId) {
    this.selectedCategoryId  = selectedCategoryId;
    notifyListeners();
  }
}