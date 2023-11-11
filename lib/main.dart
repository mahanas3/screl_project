import 'package:flutter/material.dart';
import 'package:screl_project/routes/route_navigation.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      onGenerateRoute: Approute.routesetting,
    );
  }
}
