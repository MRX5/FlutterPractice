import 'package:first_app_flutter/shared/components/components.dart';
import 'package:first_app_flutter/shared/cubit/cubit.dart';
import 'package:first_app_flutter/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      builder:(context,state){
        var tasks=AppCubit.get(context).tasks;
        return ListView.separated(
            itemBuilder: (context,index)=>buildTaskItem(tasks[index]),
            separatorBuilder: (context,index)=>Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            itemCount: tasks.length
        );
      } ,
      listener:(context,state){

      }
    );
  }
}
