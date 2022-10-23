import 'package:flutter/material.dart';

class UserScreenBody extends StatefulWidget {
  const UserScreenBody({Key? key}) : super(key: key);

  @override
  State<UserScreenBody> createState() => _UserScreenBodyState();
}

class _UserScreenBodyState extends State<UserScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "User Screen!!",
            style: TextStyle(fontSize: 14, color: Colors.red),
          )
        ],
      ),
    );
  }
}