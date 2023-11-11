import 'package:flutter/material.dart';
import 'package:screl_project/routes/route_name.dart';
import 'package:screl_project/screens/home_page.dart';

class Approute {
  static Route<dynamic> routesetting(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homepage:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          );
        }
    }
  }
}
