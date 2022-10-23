import 'package:dubhacks_project/Init.dart';
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
      appBar: AppBar(
        title: Transform(
          transform: Matrix4.translationValues(-100.0, 0.0, 0.0),
          child: Text(
            'Roomies',
            style: constants.logoTextStyle(30, constants.titleFontColor),
            textAlign: TextAlign.left,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Init.isNewAccount = false;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenOutline(),
                    ));
              },
              child: Text(
                "Login",
                style:
                    constants.loginSmallTextStyle(14, constants.titleFontColor),
              )),
        ],
        backgroundColor: constants.titleBarColor,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    style: constants.loginSmallTextStyle(25, null),
                    children: [
                  const TextSpan(
                    text: 'with  ',
                  ),
                  TextSpan(
                    text: 'Roomies,',
                    style: constants.logoTextStyle(48, null),
                  ),
                ])),
            Text(
              'say \'Hello\' to organized households.',
              style: constants.boldTextStyle(20, null, null),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green[400]!),
                ),
                child: Text(
                  "Get Started Today",
                  style: constants.loginSmallTextStyle(20, null),
                ),
                onPressed: () {
                  Init.isNewAccount = true;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenOutline(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
