import 'package:flutter/foundation.dart';
import 'package:project1/models/task.dart';
import 'package:uuid/uuid.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = [];

  final Uuid uuid = Uuid();

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(Task(id: uuid.v4(), title: title));
    notifyListeners();
  }

  void removeTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }

  void updateTask(String id, String newTitle) {
    var task = _tasks.firstWhere((task) => task.id == id);
    task.title = newTitle;
    notifyListeners();
  }

  void toggleDone(String id) {
    var task = _tasks.firstWhere((task) => task.id == id);
    task.isDone = !task.isDone;
    notifyListeners();
  }

  Task findById(String id) {
    return _tasks.firstWhere((task) => task.id == id);
  }
}
