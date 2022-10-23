import 'package:flutter/material.dart';
import '/constants/constants.dart' as constants;

class UserScreenBody extends StatefulWidget {
  const UserScreenBody({Key? key}) : super(key: key);

  @override
  State<UserScreenBody> createState() => _UserScreenBodyState();
}

class _UserScreenBodyState extends State<UserScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: constants.constantAppBar(context),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/dlewis.jpeg'),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deja Lewis',
                    style: constants.normalTextStyle(25, null),
                  ),
                  const SizedBox(
                    width: 200,
                    child: Divider(
                      height: 25,
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'dlewis',
                    style: constants.normalTextStyle(15, null),
                  ),
                  Text(
                    'Elm Hall',
                    style: constants.normalTextStyle(15, null),
                  ),
                  Text(
                    'Household: Dorm',
                    style: constants.normalTextStyle(15, null),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            child: Column(
              children: settingTabs(),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> settingTabs() {
    List<Widget> result = [];
    result.add(createTab(Icons.account_circle, 'Account'));
        result.add(const SizedBox(
      height: 10,
    ));
    result.add(createTab(Icons.person_add, 'Create Household'));
    result.add(const SizedBox(
      height: 10,
    ));
    result.add(createTab(Icons.group, 'Join Household'));
    result.add(const SizedBox(
      height: 10,
    ));
    result.add(createTab(Icons.support, 'Support'));
    result.add(const SizedBox(
      height: 10,
    ));
    result.add(createTab(Icons.info, 'About'));
    result.add(const SizedBox(
      height: 10,
    ));
    return result;
  }

  Widget createTab(IconData icon, String name) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 159, 154, 154),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      height: 65,
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Icon(icon),
              Text(
                name,
                style: constants.normalTextStyle(20, null),
              )
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.navigate_next)),
        ],
      ),
    );
  }
}
