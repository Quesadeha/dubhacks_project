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
              child: Padding(
                padding:const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Counseling",
                  style: constants.normalTextStyle(30, null),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),  
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child:Text(
                  DateFormat('EEEEE, MMMM d').format(DateTime.now()),
                  style: constants.normalTextStyle(15, null),
                ),
              ),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.black
            //     ),
            //   ),
            //   child: SizedBox(
            //     width: 300,
            //     child: Row(
            //       children: [
            //         const Icon(Icons.search),
            //         Text(
            //           'Laundry Life Hacks...',
            //           style: constants.normalTextStyle(15, const Color.fromARGB(158, 147, 143, 143)),
            //           softWrap: true,
            //           overflow: TextOverflow.visible,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
                  return SearchBar(
                    hintText: 'Search...',
                    controller: controller,
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    leading: const Icon(Icons.search),
                  );
                },
                suggestionsBuilder: (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(2, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        controller.closeView(item);
                      },
                    );
                  });
                }
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                constants.news[i]['title']!,
                style: constants.normalTextStyle(20, null),
                textAlign: TextAlign.start,
              ),
              Text(
              constants.news[i]['content']!,
              style: constants.loginSmallTextStyle(15, null),
              ),
              Text(
                constants.news[i]['posted']! + constants.news[i]['author']!,
                style: constants.normalTextStyle(15, null),
                textAlign: TextAlign.start,
              ),
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