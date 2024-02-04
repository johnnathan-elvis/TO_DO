import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // referece the box
  final _mybox = Hive.box('mybox');

  //run this method if ths is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  //updata the database
  void updataDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
