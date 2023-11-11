import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screl_project/provider/homepage_provider.dart';
import 'package:screl_project/routes/route_navigation.dart';

void main() async {
  runApp(ChangeNotifierProvider(
    create: (context) => HomePageProvider(),
    child: const Main(),
  ));
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
