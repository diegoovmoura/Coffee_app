import 'package:coffee_shop/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/pages/IntroPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/IntroPage': (context) => const IntroPage(),
        '/HomePage': (context) => const HomePage()
      },
    );
  }
}
