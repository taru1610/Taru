class Category {
  final int categoryId;
  final String name;
  final String icon;

  Category({this.categoryId, this.name, this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: "assets/cricket.jpg",
);

final cricketCategory = Category(
  categoryId: 1,
  name: "Cricket",
  icon: "assets/cricket_icon.png",
);

final baskelballCategory = Category(
  categoryId: 2,
  name: "Basketball",
  icon:"assets/basketball_icon.jpg",
);

final footballCategory = Category(
  categoryId: 3,
  name: "Football",
  icon:"assets/football_icon.png",
);

final kabaddiCategory = Category(
  categoryId: 4,
  name: "Kabaddi",
  icon: "assets/kabaddi_icon.png",
);

final tabletennisCategory = Category(
  categoryId: 5,
  name: "Table Tennis",
  icon: "assets/tt_icon.png",
);

final athleticsCategory = Category(
  categoryId: 6,
  name: "Athletics",
  icon: "assets/athletics_icon.png",
);
final badmintonCategory = Category(
  categoryId: 7,
  name: "Badminton",
  icon: "assets/badminton_icon.png",
);
final powerliftingCategory = Category(
  categoryId: 8,
  name: "Power Lifting",
  icon: "assets/powerlifting_icon.png",
);
final carromCategory = Category(
  categoryId: 9,
  name: "Carrom",
  icon: "assets/carrom_icon.png",
);
final chessCategory = Category(
  categoryId: 10,
  name: "Chess",
  icon: "assets/chess_icon.png",
);
final  tugofwarCategory = Category(
  categoryId: 11,
  name: "Tug of War",
  icon: "assets/tug_of_war_icon.png",
);
final poolCategory = Category(
  categoryId: 12,
  name: "Pool",
  icon: "assets/pool_icon.png",
);
final khokhoCategory = Category(
  categoryId: 13,
  name: "Kho Kho",
  icon: "assets/khokho_icon.jpg",
);
final volleyballCategory = Category(
  categoryId: 14,
  name: "Volleyball",
  icon: "assets/volleyball_icon.jpg",
);
final obstacleraceCategory = Category(
  categoryId: 15,
  name: "Obstacle Race",
  icon: "assets/obstacle_race_icon.png",
);



final categories = [
  allCategory,
  cricketCategory,
  footballCategory,
  baskelballCategory,
  kabaddiCategory,
  tabletennisCategory,
  athleticsCategory,
  badmintonCategory,
  powerliftingCategory,
  carromCategory,
  chessCategory,
  tugofwarCategory,
  poolCategory,
  khokhoCategory,
  volleyballCategory,
  obstacleraceCategory,
];