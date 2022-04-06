import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
   UsersScreen({Key? key}) : super(key: key);

  List<UserModel> usersList=[
    UserModel(id: 1, name: "Mostafa Gad", phone: "1111"),
    UserModel(id: 2, name: "Asmaa Sobhy", phone: "2222"),
    UserModel(id: 3, name: "Mostafa Gad", phone: "1111"),
    UserModel(id: 4, name: "Asmaa Sobhy", phone: "2222"),
    UserModel(id: 5, name: "Mostafa Gad", phone: "1111"),
    UserModel(id: 6, name: "Asmaa Sobhy", phone: "3333"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users'
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index)=>buildUserItem(usersList[index]),
          separatorBuilder: (context,index)=>Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: usersList.length
      )

    );
  }

  Widget buildUserItem(UserModel user)=>Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
      children:  [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                  color: Colors.grey
              ),
            )
          ],
        )
      ],
    ),
  );
}

class UserModel{
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone
  });

}