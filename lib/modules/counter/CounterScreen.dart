import 'package:first_app_flutter/modules/counter/cubit/cubit.dart';
import 'package:first_app_flutter/modules/counter/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return BlocProvider(
       create: (BuildContext context)=>CounterCubit(),
       child: BlocConsumer<CounterCubit,CounterStates>(
         listener: (context,state){
           if(state is CounterMinusState)print('Minus State ${state.counter}');
           if(state is CounterPlusState)print('Plus State ${state.counter}');
         },
         builder: (context,state)=>Scaffold (
           appBar: AppBar(
             title: const Text(
                 'Counter'
             ),
           ),
           body: Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 TextButton(
                     onPressed: (){
                       CounterCubit.get(context).plus();
                     },
                     child: const Text(
                         'PLUS'
                     )
                 ),
                 Padding(
                   padding: EdgeInsets.symmetric(
                       horizontal: 20.0
                   ),
                   child: Text(
                     '${CounterCubit.get(context).counter}',
                     style: TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.bold,
                         color: Colors.black
                     ),
                   ),
                 ),
                 TextButton(
                     onPressed: () {
                       CounterCubit.get(context).minus();
                     },
                     child: const Text(
                         'MINUS'
                     )
                 ),
               ],
             ),
           ),
         ),
       ),
     );
   }
}

