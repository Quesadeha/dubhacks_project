import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '/constants/constants.dart' as constants;

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
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text("Leaderboard", style: constants.normalTextStyle(30, null)),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    DateFormat('EEEEE, MMMM d').format(DateTime.now()),
                    style: constants.normalTextStyle(15, null),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: leaderList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> leaderList() {
    List<Widget> leads = [];
      leads.add(profile('jpage.jpeg', 'Jake Page', 1));
      leads.add(const SizedBox(
        height: 10,
      ));
      leads.add(profile('dlewis.jpeg', 'Deja Lewis', 2));
      leads.add(const SizedBox(
        height: 10,
      ));
      leads.add(profile('penguin.png', 'Irene Hu', 3));
      leads.add(const SizedBox(
        height: 10,
      ));
      leads.add(profile('snguy.jpeg', 'Steven Nguyen', 4));
      leads.add(const SizedBox(
        height: 10,
      ));

      leads.add(profile('czahn.jpg', 'Camille Zahn', 6));
    return leads;
  }

  Container profile(String img, String name, int place) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 159, 154, 154),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      height: 65,
      width: 400,
      // color: const Color.fromARGB(255, 159, 154, 154),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/$img'),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: constants.normalTextStyle(20, null),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                place.toString(),
                style: constants.normalTextStyle(25, null),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
