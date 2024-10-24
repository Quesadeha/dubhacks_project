import 'package:dubhacks_project/Init.dart';
import 'package:flutter/material.dart';
import '/constants/constants.dart' as constants;
import 'package:intl/intl.dart';
import 'dart:math';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<Map<String, String>> chores = constants.chores;
  List<Map<String, String>> createdList = [];
  bool useTemplate = false;
  List<Widget> uiTodoList = [];
  List<Widget> customTodoList = [];
  var random = Random();

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
            Visibility(
                visible: Init.isNewAccount == true && useTemplate == false && createdList.isEmpty,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        // style: ButtonStyle(
                        //   backgroundColor: MaterialStateProperty.all<Color>(
                        //       Colors.green[400]!),
                        // ),
                        onPressed: () {
                          setState(() {
                            useTemplate = true;
                          });
                        },
                        child: Text(
                          'Use Template Todo List',
                          style: constants.normalTextStyle(15, null),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                )),
            SizedBox(
              width: 300,
              child: Column(
                children: todoList(),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.green[400]!,
              onPressed: () {
                setState(() {
                  chores.add(chores[random.nextInt(7)]);
                  createdList.add(chores[random.nextInt(7)]);
                });
              },
              child: const Icon(Icons.add, color: Colors.white),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  List<Widget> todoList() {
    List<Widget> todoList = [];
    if (Init.isNewAccount == false || useTemplate == true) {
      makeList(todoList, chores);
    } else {
      makeList(todoList, createdList);
    }
    return todoList;
  }

  List<Widget> makeList(List<Widget> todoList, List<Map<String, String>> list) {
    for (int i = 0; i < list.length; i++) {
      todoList.add(Container(
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
                  width: 10,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/${list[i]['photo']}'),
                        fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  list[i]['chore']!,
                  style: constants.normalTextStyle(14, null),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      if (list[i]['completed'] == 'false') {
                        setState(() {
                          list[i]['completed'] = 'true';
                        });
                      }
                    },
                    icon: Icon(
                      list[i]['completed'] == 'true'
                          ? Icons.done
                          : Icons.indeterminate_check_box_outlined,
                      size: 20,
                    )),
                IconButton(
                  onPressed: () {
                    setState(() {
                      list.removeAt(i);
                    });
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ));
      todoList.add(const SizedBox(
        height: 10,
      ));
    }
    return todoList;
  }
}
