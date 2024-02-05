import 'package:coffee_shop/pages/CartPage.dart';
import 'package:coffee_shop/pages/FavPage.dart';
import 'package:coffee_shop/pages/NotfPage.dart';
import 'package:coffee_shop/pages/menuPage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void goToPage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List pages = const [
    MenuPage(),
    FavPage(),
    CartPage(),
    NotfPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            iconSize: 30.0,
            activeColor: const Color.fromRGBO(198, 124, 78, 100),
            color: const Color.fromRGBO(49, 49, 49, 1),
            backgroundColor: Colors.white,
            onTabChange: (selectedIndex) => goToPage(selectedIndex),
            padding: const EdgeInsets.all(3),
            tabs: const [
              GButton(icon: Icons.home_rounded),
              GButton(icon: Icons.favorite),
              GButton(icon: Icons.shopping_bag_rounded),
              GButton(icon: Icons.notifications),
            ],
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
