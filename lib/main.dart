import 'package:dubhacks_project/screens/startup_screen_body.dart';
import 'package:flutter/material.dart';
import '/constants/constants.dart' as constants;

void main() {
  runApp(
    const MaterialApp(
      home: StartupScreenBody(),
      initialRoute: '/home',
      // routes: {
      //   '/pages':(context) => const PagesScreen();
      // },
    )
  );
}

