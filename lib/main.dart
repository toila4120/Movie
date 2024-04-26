import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untilted/category.dart';
import 'package:untilted/homeApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeApp();
    if (_selectedPageIndex == 1) {
      activePage = const Category();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF0F111D)),
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              activePage,
              Container(
                padding: const EdgeInsets.only(bottom: 5, left: 8, right: 8),
                child: Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 15, 16, 20),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      child: GNav(
                        backgroundColor: const Color.fromARGB(255, 15, 16, 20),
                        color: Colors.white,
                        activeColor: Colors.white,
                        tabBackgroundColor: Colors.grey.shade800,
                        padding: const EdgeInsets.all(10),
                        gap: 5,
                        onTabChange: _selectPage,
                        tabs: const [
                          GButton(
                            icon: Icons.home,
                            text: 'Home',
                          ),
                          GButton(
                            icon: Icons.category,
                            text: 'Category',
                          ),
                          GButton(
                            icon: Icons.favorite_border,
                            text: 'Favorite',
                          ),
                          GButton(
                            icon: Icons.person,
                            text: 'Person',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
