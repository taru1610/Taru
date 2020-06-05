class Schedulenote{
  String sportName;
  String branch1;
  String branch2;
  String date;
  String timestart;
  String timeEnd;
  String venue;

  Schedulenote(
    this.sportName,
    this.branch1,
    this.branch2,
    this.date,
    this.timestart,
    this.timeEnd,
    this.venue,
  );

  Schedulenote.fromJson(Map<String,dynamic> json){
    sportName = json['sportName'];
    branch1 = json['branch1'];
    branch2 = json['branch2'];
    date = json['date'];
    timestart = json['timestart'];
    timeEnd = json['timeEnd'];
    venue = json['venue'];
  }
}