import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print('notifications button pressed');
            },
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpMHRgGhGu9aTtu0Te1mcG91JjK6v24lHbbw&usqp=CAU'),
                      width: 200.0,
                      height: 200.0,
                  ),
                  Container(
                    width: 100.0,
                    padding: EdgeInsets.only(bottom: 8.0,top: 8.0),
                    color: Colors.black.withOpacity(0.5),
                    child: Text(
                      'Hello World',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.9,
                        color: Colors.indigo
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
