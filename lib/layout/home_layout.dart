import 'package:first_app_flutter/modules/archived_tasks/ArchivedTasksScreen.dart';
import 'package:first_app_flutter/modules/done_tasks/DoneTasksScreen.dart';
import 'package:first_app_flutter/modules/new_tasks/NewTasksScreen.dart';
import 'package:first_app_flutter/shared/components/components.dart';
import 'package:first_app_flutter/shared/cubit/cubit.dart';
import 'package:first_app_flutter/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

import '../shared/components/constants.dart';

class HomeLayout extends StatelessWidget {
   HomeLayout({Key? key}) : super(key: key);


  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit,AppStates>(
        builder: (BuildContext context,AppStates state){
          AppCubit cubit=AppCubit.get(context);
            return Scaffold(
              key: scaffoldKey,
              appBar: AppBar(
                title: Text(
                  cubit.titles[cubit.currentIndex],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  if (cubit.isBottomSheetShown) {
                    if (formKey.currentState!.validate()) {
                      cubit.insertTask(
                          title: titleController.text,
                          time: timeController.text,
                          date: dateController.text);
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
                          cubit.changeBottomSheetState(isShow: false, icon: Icons.edit);
                    });
                    cubit.changeBottomSheetState(isShow: true, icon: Icons.add);
                  }
                },
                child: Icon(cubit.fabIcon),
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: AppCubit.get(context).currentIndex,
                onTap: (index) =>{
                  cubit.changeIndex(index)
                } ,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.check_circle_outline), label: 'Done'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.archive_outlined), label: 'Archived'),
                ],
              ),
              body: state is AppGetDatabaseLoadingState
                  ? const Center(child: CircularProgressIndicator())
                  : cubit.screens[cubit.currentIndex],
            );
        },
        listener: (BuildContext context, AppStates state){
            if(state is AppInsertDatabaseState){
              Navigator.pop(context);
          }
        },
      ),
    );
  }

}

