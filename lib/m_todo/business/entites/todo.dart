class Todo{
  int id;
  String name;
  bool status;
  DateTime date;
  DateTime rappel;

   Todo({this.id=0, this.name="", this.status=false,
    required this.date, required this.rappel});

}