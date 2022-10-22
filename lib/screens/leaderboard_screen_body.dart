import 'package:flutter/material.dart';

class LeaderBoardScreenBody extends StatefulWidget {
  const LeaderBoardScreenBody({Key? key}) : super(key: key);

  @override
  State<LeaderBoardScreenBody> createState() => _LeaderBoardScreenBodyState();
}

class _LeaderBoardScreenBodyState extends State<LeaderBoardScreenBody> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "LeaderBoard Screen",
            style: TextStyle(fontSize: 14, color: Colors.red),
          )
        ],
      ),
    );
  }
}
