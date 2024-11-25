import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mmuse/widget/button.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  String tabValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(tabValue),
          Text(tabValue),
          Text(tabValue),
        ],
      ),
      bottomNavigationBar: EQTabbar(
        onTabPress: (String value) {
          tabValue = value;
          setState(() {});
        },
      ),
    );
  }
}

class EQTabbar extends StatelessWidget {
  final Function(String value) onTabPress;
  const EQTabbar({super.key, required this.onTabPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TabbarItem(
            title: "Home",
            icon: Icons.abc,
            isSeleceted: true,
            onPressed: () {
              log("Home");
              onTabPress('HOME');
            },
          ),
          TabbarItem(
            title: "Fav",
            icon: Icons.abc,
            onPressed: () {
              log("fave");
              onTabPress('FAV');
              // tabValue = 'FAV';
              // setState(() {});
            },
          ),
          TabbarItem(
            title: "Profile",
            icon: Icons.abc,
            onPressed: () {
              log("Profile");
            },
          ),
          TabbarItem(
            title: "Setting",
            icon: Icons.abc,
            onPressed: () {
              log("Setting");
            },
          ),
          TabbarItem(
            title: "Home",
            icon: Icons.abc,
            onPressed: () {
              log("home");
            },
          ),
        ],
      ),
    );
  }
}

class TabbarItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSeleceted;
  final VoidCallback onPressed;
  const TabbarItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.isSeleceted = false,
  });

  @override
  Widget build(BuildContext context) {
    // TextButton(onPressed: onPressed, child: child)
    return TouchableOpacity(
      onPressed: onPressed,
      child: Column(
        children: [
          Text(title),
          Icon(
            icon,
            size: 32,
            color: isSeleceted ? Colors.blue : Colors.black,
          ),
        ],
      ),
    );
  }
}
