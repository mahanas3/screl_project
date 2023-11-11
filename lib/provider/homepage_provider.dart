import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier{
  List<String> _fruits = ['apple', 'mango', 'orange', 'grape', 'banana'];

  bool loading = false;

  List<String> get fruits => _fruits;

  void addFruit(String fruit) {
    _fruits.add(fruit);
    notifyListeners();
  }
}