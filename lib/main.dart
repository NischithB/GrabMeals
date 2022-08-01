import 'package:flutter/material.dart';
import 'package:grab_meals/ui/home_screen.dart';

void main() {
  runApp(const GrabMealsApp());
}

class GrabMealsApp extends StatelessWidget {
  const GrabMealsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
