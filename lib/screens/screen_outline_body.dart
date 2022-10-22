import 'package:flutter/material.dart';
import '/constants/constants.dart' as constants;

class ScreenOutline extends StatefulWidget {
  const ScreenOutline({Key? key}) : super(key: key);

  @override
  State<ScreenOutline> createState() => _ScreenOutlineState();
}

class _ScreenOutlineState extends State<ScreenOutline> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: constants.screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard), label: 'Leaderboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list_rounded), label: 'To Do'),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
