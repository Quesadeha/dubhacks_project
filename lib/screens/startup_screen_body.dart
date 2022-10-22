import 'package:dubhacks_project/screens/screen_outline_body.dart';
import 'package:flutter/material.dart';
import '/constants/constants.dart' as constants;

class StartupScreenBody extends StatefulWidget {
  const StartupScreenBody({Key? key}) : super(key: key);

  @override
  State<StartupScreenBody> createState() => StartupScreenBodyState();
}

class StartupScreenBodyState extends State<StartupScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          // style: ButtonStyle(

          // ),
          child: Text(
            "Create Account",
            style: constants.normalTextStyle(20, null),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenOutline(),
                ));
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Already have account",
          style: constants.normalTextStyle(14, null),
        )
      ],
    ));
  }
}
