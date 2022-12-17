import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  final int index;
  final Function (int?) onTap;

  const MyBottomBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: onTap,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.spoke), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Home'),
        ] );
  }
}
