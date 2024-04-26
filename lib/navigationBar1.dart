import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar1 extends StatelessWidget {
  const NavBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          padding: const EdgeInsets.all(10),
          gap: 8,
          onTabChange: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, "/");
            } else if (value == 1) {
              Navigator.pushNamed(context, "category");
            }
          },
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
    );
  }
}
