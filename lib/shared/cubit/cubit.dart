import 'package:bloc/bloc.dart';
import 'package:first_app_flutter/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import '../../modules/archived_tasks/ArchivedTasksScreen.dart';
import '../../modules/done_tasks/DoneTasksScreen.dart';
import '../../modules/new_tasks/NewTasksScreen.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit():super(AppInitialState());

  static AppCubit get(context)=>BlocProvider.of(context);
  late Database database;
  List<Map>tasks=[];
  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;

  List<Widget> screens = [
    const NewTasksScreen(),
    const DoneTasksScreen(),
    const ArchivedTasksScreen()
  ];
  int currentIndex = 0;
  List<String> titles = ['New Tasks', 'Done Tasks', 'Archived Tasks'];

  void createDatabase() {
      openDatabase(
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
            tasks=value;
            emit(AppGetDatabaseState());
        });
      },
    ).then((value){
      database=value;
      emit(AppCreateDatabaseState());
    });
  }

   insertTask(
      {required String title,
        required String time,
        required String date}) async {
    await database.transaction((txn) {
      txn
          .rawInsert(
          'INSERT INTO tasks(title,date,time,status) VALUES("$title","$date","$time","new")')
          .then((value) {
            print('$value inserted successfully');
            emit(AppInsertDatabaseState());

            getDataFromDatabase(database).then((value){
              tasks=value;
              emit(AppGetDatabaseState());
            });
          })
          .catchError((error) {
        print(error);
      });
      return null;
    });
  }

  Future<List<Map>> getDataFromDatabase(Database db) async {
    emit(AppGetDatabaseLoadingState());
    return await db.rawQuery("SELECT * FROM tasks");
  }


  void changeIndex(int index){
    currentIndex=index;
    emit(AppChangeBottomNavBarState());
  }

  void changeBottomSheetState({
    required bool isShow,
    required IconData icon}){
    isBottomSheetShown=isShow;
    fabIcon=icon;
    emit(AppChangeBottomSheetState());
  }

}