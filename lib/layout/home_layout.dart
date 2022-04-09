import 'package:first_app_flutter/modules/archived_tasks/ArchivedTasksScreen.dart';
import 'package:first_app_flutter/modules/done_tasks/DoneTasksScreen.dart';
import 'package:first_app_flutter/modules/new_tasks/NewTasksScreen.dart';
import 'package:first_app_flutter/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

import '../shared/components/constants.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  bool isBottomSheetShown = false;
  late Database database;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  IconData fabIcon = Icons.edit;
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  List<Widget> screens = [
    const NewTasksScreen(),
    const DoneTasksScreen(),
    const ArchivedTasksScreen()
  ];

  List<String> titles = ['New Tasks', 'Done Tasks', 'Archived Tasks'];

  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottomSheetShown) {
            if (formKey.currentState!.validate()) {
              insertTask(
                      title: titleController.text,
                      time: timeController.text,
                      date: dateController.text)
                  .then((value) {
                Navigator.pop(context);
                getDataFromDatabase(database).then((List<Map> value) {
                  setState(() {
                    isBottomSheetShown = false;
                    tasks = value;
                    fabIcon = Icons.edit;
                  });
                });
              });
            }
          } else {
            scaffoldKey.currentState
                ?.showBottomSheet(
                    (context) => Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.white,
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                defaultFormField(
                                    controller: titleController,
                                    prefixIcon: Icons.title,
                                    label: "Title",
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return "Invalid Title";
                                      }
                                      return null;
                                    }),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                defaultFormField(
                                    controller: timeController,
                                    prefixIcon: Icons.watch_later_outlined,
                                    label: "Task Time",
                                    onTap: () {
                                      showTimePicker(
                                              context: context,
                                              initialTime: TimeOfDay.now())
                                          .then((value) {
                                        timeController.text =
                                            value?.format(context) ?? '';
                                      });
                                    },
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return "Invalid Time";
                                      }
                                      return null;
                                    }),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                defaultFormField(
                                    controller: dateController,
                                    prefixIcon: Icons.date_range_outlined,
                                    label: "Task Date",
                                    onTap: () {
                                      showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime.now(),
                                              lastDate:
                                                  DateTime.parse("2022-05-01"))
                                          .then((value) {
                                        value != null
                                            ? dateController.text =
                                                DateFormat.yMMMd().format(value)
                                            : '';
                                      });
                                    },
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return "Invalid Date";
                                      }
                                      return null;
                                    }),
                              ],
                            ),
                          ),
                        ),
                    elevation: 15.0)
                .closed
                .then((value) {
              isBottomSheetShown = false;
              setState(() {
                fabIcon = Icons.edit;
              });
            });
            isBottomSheetShown = true;
            setState(() {
              fabIcon = Icons.add;
            });
          }
        },
        child: Icon(fabIcon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outline), label: 'Done'),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined), label: 'Archived'),
        ],
      ),
      body: tasks.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : screens[currentIndex],
    );
  }

  Future<String> getName() async {
    return 'Mostafa Gad';
  }

  void createDatabase() async {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        database
            .execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT,'
                ' date Text, time Text,status Text)')
            .then((value) => print('Database created'))
            .catchError((error) => print('Failed to create database'));
      },
      onOpen: (database) {
        print('Database opened');
        getDataFromDatabase(database).then((List<Map> value) {
          setState(() {
            tasks = value;
          });
        });
      },
    );
  }

  Future insertTask(
      {required String title,
      required String time,
      required String date}) async {
    await database.transaction((txn) {
      txn
          .rawInsert(
              'INSERT INTO tasks(title,date,time,status) VALUES("$title","$date","$time","new")')
          .then((value) => debugPrint('$value inserted successfully'))
          .catchError((error) {
        debugPrint(error);
      });
      return null;
    });
  }

  Future<List<Map>> getDataFromDatabase(Database db) async {
    return await db.rawQuery("SELECT * FROM tasks");
  }
}
