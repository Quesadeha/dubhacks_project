import 'package:dubhacks_project/screens/home_screen_body.dart';
import 'package:dubhacks_project/screens/leaderboard_screen_body.dart';
import 'package:dubhacks_project/screens/news_screen_body.dart';
import 'package:dubhacks_project/screens/user_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle loginSmallTextStyle(double fontSize, Color? color) {
  color ??= normalTextColor;
  return GoogleFonts.averiaSerifLibre(
      textStyle: TextStyle(
        fontSize: fontSize, 
        color: color,
        ),);
}

TextStyle normalTextStyle(double fontSize, Color? color) {
  color ??= normalTextColor;
  return GoogleFonts.poppins(
    textStyle: TextStyle(fontSize: fontSize, color: color, fontWeight: FontWeight.bold)
  );
}

TextStyle boldTextStyle(double fontSize, Color? color, double? letterSpacing) {
  color ??= normalTextColor;
  return GoogleFonts.averiaSerifLibre(
      textStyle: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.bold,
          letterSpacing: letterSpacing));
}

TextStyle logoTextStyle(double fontSize, Color? color) {
  color ??= Colors.black;
  return GoogleFonts.averiaSerifLibre(
      textStyle: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.bold,
          letterSpacing: -2));
}

AppBar constantAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: titleBarColor,
      title: Transform(
    transform: Matrix4.translationValues(-100.0, 0.0, 0.0),
    child: Text(
      'Roomies',
      style: logoTextStyle(30, titleFontColor),
      textAlign: TextAlign.left,
    ),
  ),
  actions: [
    IconButton(
      onPressed: () {
        Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserScreenBody(),
                ));
      }, 
      icon: const Icon(Icons.account_circle))
  ],
  );
}

const titleBarColor = Color.fromARGB(255, 55, 62, 65);

const titleFontColor = Color.fromARGB(255, 245, 249, 233);

const titleColor = Color.fromARGB(255, 50, 50, 50);

const normalTextColor = Colors.black;

List<Widget> screens = <Widget>[
  const HomeScreenBody(),
  const LeaderBoardScreenBody(),
  const NewsScreenBody(),
];

List<Map<String, String>> chores = [
  {
    'photo' : 'czahn.jpg',
    'name' : 'Camille Zahn',
    'chore' : 'Vacuum Floor',
    'completed' : 'false',
  },
  {
    'photo' : 'dlewis.jpeg',
    'name' : 'Deja Lewis',
    'chore' : 'Do Dishes',
    'completed' : 'false',
  },
  {
    'photo' : 'czahn.jpg',
    'name' : 'Camille Zahn',
    'chore' : 'Dust',
    'completed' : 'false',
  },
  {
    'photo' : 'ethan.jpg',
    'name' : 'Ethan Torhjelm',
    'chore' : 'Clean Bathroom',
    'completed' : 'false',
  },
  {
    'photo' : 'jpage.jpeg',
    'name' : 'Jake Page',
    'chore' : 'Clean Toilet',
    'completed' : 'true',
  },
  {
    'photo' : 'penguin.png',
    'name' : 'Irene Hu',
    'chore' : 'Do Laundry',
    'completed' : 'false',
  },
  {
    'photo' : 'snguy.jpeg',
    'name' : 'Steven Nguyen',
    'chore' : 'Take Garbage Out',
    'completed' : 'false',
  }
];

List<Map<String, String>> news = [
  {
    'title' : '11 Ways to Be a Better Roommate',
    'content' : 'Living with someone new can be tough! I’ve been there several times in my journey through college, but I’ve also made some of my best friends who also happened to be my roommates...',
    'posted' : '3d ago - ',
    'author' : 'William H. George'
  },
  {
    'title' : 'Dealing with Conflicts',
    'content' : 'Remember that conflict is natural and happens in every ongoing relationship. Since conflict is unavoidable we must learn to manage it. Conflict is a sign of a need for change and an opportunity...',
    'posted' : '5d ago - ',
    'author' : 'Admin',
  },
  {
    'title': '5 Tips to Maintain a Clean Kitchen',
    'content': 'A mess in the kitchen can be demoralizing. I can’t cook in a dirty kitchen, and having to clean it up before I can even get started drains my energy. So the kitchen needs to stay in...',
    'posted': '6d ago - ',
    'author': 'Austin H. Lee',
  },
];

List<Text> defaultList = <Text>[
  Text(
    "Vacuum Floor",
    style: normalTextStyle(14, null),
  ),
  Text(
    "Start Dishwasher",
    style: normalTextStyle(14, null),
  ),
  Text(
    "Empty Dishwasher",
    style: normalTextStyle(14, null),
  ),
  Text(
    "Clean Bathroom Mirror",
    style: normalTextStyle(14, null),
  ),
  Text(
    "Clean Toilet",
    style: normalTextStyle(14, null),
  ),
  Text(
    "Do Laundry",
    style: normalTextStyle(14, null),
  ),
  Text(
    "Take Garbage Out",
    style: normalTextStyle(14, null),
  ),
];
