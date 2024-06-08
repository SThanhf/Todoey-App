import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task>? _tasks = [Task(name: 'Add your Todo List!')];

  int get taskCount => _tasks!.length;


  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks!);
  }

  void setTaskName(String newValue){
    _tasks!.add(Task(name: newValue));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks!.remove(task);
    notifyListeners();
  }

}
