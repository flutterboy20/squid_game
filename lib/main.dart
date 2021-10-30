import 'package:flutter/material.dart';
import 'screens/detail_screen.dart';
import 'screens/home_screen.dart';
import 'screens/intro_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        DetailScreen.routeName: (ctx) => const DetailScreen(),
      },
    );
  }
}
