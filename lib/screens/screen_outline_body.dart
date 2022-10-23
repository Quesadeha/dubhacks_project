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
      appBar: constants.constantAppBar(context),
      body: constants.screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        backgroundColor: constants.titleBarColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.view_list_rounded),label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail,
              ),
              label: ''),
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
