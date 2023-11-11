import 'package:flutter/material.dart';

import '../model_class/todo_model.dart';

class HomePageProvider extends ChangeNotifier {
  List<Todo> _todo = [];

  bool loading = false;

  List<Todo> get todo => _todo;

  void addTodo(String todoName, BuildContext context) {
    try {
      _todo.add(Todo(name: todoName));
      notifyListeners();
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print(e);
    }
  }

  void deleteTodo(int index, BuildContext context) {
    try {
      if (index >= 0 && index < _todo.length) {
        _todo.removeAt(index);
        notifyListeners();
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print(e);
    }
  }
}
