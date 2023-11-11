import 'package:flutter/material.dart';

import '../model_class/todo_model.dart';

class HomePageProvider extends ChangeNotifier {
  List<Todo> _todo = [
  ];

  bool loading = false;

  List<Todo> get todo => _todo;

  void addFruit(String fruitName,BuildContext context) {
    try {
      _todo.add(Todo(name: fruitName));
      notifyListeners();
    }catch(e){
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print(e);
    }
  }
  void deleteFruit(int index,BuildContext context) {
    try{
    if (index >= 0 && index < _todo.length) {
      _todo.removeAt(index);
      notifyListeners();
    }
  }catch(e){
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print(e);
    }}
}
