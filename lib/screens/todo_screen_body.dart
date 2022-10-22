import 'package:flutter/material.dart';

class TodoScreenBody extends StatefulWidget {
  const TodoScreenBody({Key? key}) : super(key: key);

  @override
  State<TodoScreenBody> createState() => _TodoScreenBodyState();
}

class _TodoScreenBodyState extends State<TodoScreenBody> {
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
            "Todo Screen omg!!",
            style: TextStyle(fontSize: 14, color: Colors.red),
          )
        ],
      ),
    );
  }
}
