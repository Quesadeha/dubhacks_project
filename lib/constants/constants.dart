import 'package:dubhacks_project/screens/home_screen_body.dart';
import 'package:dubhacks_project/screens/leaderboard_screen_body.dart';
import 'package:dubhacks_project/screens/todo_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle normalTextStyle(double fontSize, Color? color) {
  color ??= normalTextColor;
  return GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: fontSize, color: color));
}

const titleColor = Color.fromARGB(255, 50, 50, 50);

const normalTextColor = Color.fromARGB(255, 100, 100, 100);

List<Widget> screens = <Widget>[
  const HomeScreenBody(),
  const LeaderBoardScreenBody(),
  const TodoScreenBody(),
];

List<Widget> defaultList = <Widget>[
  Text(
    "Vacuum Floor",
    style: normalTextStyle(12, null),
  ),
  Text(
    "Start Dishwasher",
    style: normalTextStyle(12, null),
  ),
  Text(
    "Empty Dishwasher",
    style: normalTextStyle(12, null),
  ),
  Text(
    "Clean Bathroom Mirror",
    style: normalTextStyle(12, null),
  ),
  Text(
    "Clean Toilet",
    style: normalTextStyle(12, null),
  ),
  Text(
    "Do Laundry",
    style: normalTextStyle(12, null),
  ),
  Text(
    "Take Garbage Out",
    style: normalTextStyle(12, null),
  ),
];
