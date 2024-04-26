import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: const Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "category");
            },
            child: const Icon(
              Icons.category,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
