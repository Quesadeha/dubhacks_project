import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '/constants/constants.dart' as constants;

class NewsScreenBody extends StatefulWidget {
  const NewsScreenBody({Key? key}) : super(key: key);

  @override
  State<NewsScreenBody> createState() => _NewsScreenBodyState();
}

class _NewsScreenBodyState extends State<NewsScreenBody> {
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
                  Text("Our Tasks", style: constants.normalTextStyle(30, null)),
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
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black
                ),
              ),
              child: SizedBox(
                width: 300,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.search),
                    Text(
                      'Laundry Life Hacks...',
                      style: constants.normalTextStyle(15, const Color.fromARGB(158, 147, 143, 143)),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: news(),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> news() {
    List<Widget> news = [];
    for (int i = 0; i < constants.news.length; i++) {
      news.add(
        SizedBox(
          width: 300,
          child: Column(
            children: [
              Text(
                constants.news[i]['title']!,
                style: constants.normalTextStyle(20, null),
              ),
              Text(
              constants.news[i]['content']!,
              style: constants.loginSmallTextStyle(15, null),
            ),
            Row(
              children: [
                Text(
                  constants.news[i]['posted']!,
                  style: constants.normalTextStyle(15, null),
                ),
                Text(
                  constants.news[i]['author']!,
                  style: constants.normalTextStyle(15, null),
                ),
              ],
            )
            ],
          ),
        )
      );
      news.add(const Divider(
        height: 25,
        thickness: 2,
        color: Colors.black,
      ));
    }
    return news;
  }
}