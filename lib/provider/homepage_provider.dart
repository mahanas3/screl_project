import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomepageProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];

  void addCart(BuildContext context, String image, String name, String price,
      String weight) {
    cart.add({"image": image, "name": name, "price": price, "weight": weight});

    notifyListeners();
  }
}