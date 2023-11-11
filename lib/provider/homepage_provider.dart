import 'package:flutter/cupertino.dart';

import '../model_class/fruit_model.dart';

class HomePageProvider extends ChangeNotifier {
  List<Fruit> _fruits = [
    Fruit(name: 'apple'),
    Fruit(name: 'mango'),
    Fruit(name: 'orange'),
    Fruit(name: 'grape'),
    Fruit(name: 'banana'),
  ];

  bool loading = false;

  List<Fruit> get fruits => _fruits;

  void addFruit(String fruitName) {
    _fruits.add(Fruit(name: fruitName));
    notifyListeners();
  }
  void deleteFruit(int index) {
    if (index >= 0 && index < _fruits.length) {
      _fruits.removeAt(index);
      notifyListeners();
    }
  }
}
