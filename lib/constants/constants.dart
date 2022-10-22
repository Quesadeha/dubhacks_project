
import 'package:dubhacks_project/main.dart';
import 'package:dubhacks_project/screens/home_screen_body.dart';
import 'package:dubhacks_project/screens/leaderboard_screen_body.dart';
import 'package:dubhacks_project/screens/todo_screen_body.dart';
import 'package:flutter/material.dart';

const titleColor = Color.fromARGB(255, 50, 50, 50);

const normalTextColor = Color.fromARGB(255, 100, 100, 100);

List<Widget> screens = <Widget> [
  const HomeScreenBody(),
  const LeaderBoardScreenBody(),
  const TodoScreenBody(),
];