import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Category {
  int categoryId;
  String title;
  final IconData icon;

  Category({this.categoryId,this.title, this.icon});
}

List categories = [
  Category(categoryId: 0,title: 'BDCoE', icon: Icons.search),
  Category(categoryId: 1,title: 'Cricket', icon: MdiIcons.cricket), 
  Category(categoryId: 2,title: 'Football', icon:MdiIcons.football),
  Category(categoryId: 3,title: 'Basketball', icon: MdiIcons.basketball),
  Category(categoryId: 4,title: 'Kabaddi', icon: MdiIcons.kabaddi,),
  Category(categoryId: 5,title: 'Table Tennis', icon: MdiIcons.tennis),
  Category(categoryId: 6,title: 'Athletics', icon: MdiIcons.run),
  Category(categoryId: 7,title: 'Badminton', icon: MdiIcons.badminton),
  Category(categoryId: 8,title: 'Powerlifting', icon: MdiIcons.dumbbell),
  Category(categoryId: 9,title: 'Carrom', icon: MdiIcons.dice4Outline),
  Category(categoryId: 10,title: 'Chess', icon: MdiIcons.chessKing),
  Category(categoryId: 11,title: 'Tug of War', icon: MdiIcons.rayVertex),
  Category(categoryId: 12,title: 'Pool', icon: MdiIcons.billiardsRack),
  Category(categoryId: 13,title: 'Volleyball', icon: MdiIcons.volleyball),
  Category(categoryId: 14,title: 'Kho Kho', icon: MdiIcons.alphaK),
  Category(categoryId: 15,title: 'Obstacle Race', icon: MdiIcons.karate),
];