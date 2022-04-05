// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20.0,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[300],
              child: Icon(
              Icons.camera_alt,
                color: Colors.black54,
                size: 16.0,
              ),
            ), onPressed: () {  },
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[300],
              child: Icon(
              Icons.edit,
                color: Colors.black54,
                size: 16.0,
              ),
            ), onPressed: () {  },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[300]
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Search'
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                bottom: 1,
                                end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Asmaa Sobhy',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            overflow: TextOverflow.ellipsis
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Asmaa Sobhy',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.0,
                              overflow: TextOverflow.ellipsis
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Asmaa Sobhy',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.0,
                              overflow: TextOverflow.ellipsis
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Asmaa Sobhy',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.0,
                              overflow: TextOverflow.ellipsis
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Asmaa Sobhy',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.0,
                              overflow: TextOverflow.ellipsis
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Asmaa Sobhy',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.0,
                              overflow: TextOverflow.ellipsis
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Asmaa Sobhy',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.0,
                              overflow: TextOverflow.ellipsis
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sarah Ahmed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hi Sarah, How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 5
                                    ),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '3:30 AM',
                                    style:TextStyle(
                                        fontSize: 13
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sarah Ahmed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hi Sarah, How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5
                                    ),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '3:30 AM',
                                    style:TextStyle(
                                        fontSize: 13
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sarah Ahmed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hi Sarah, How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5
                                    ),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '3:30 AM',
                                    style:TextStyle(
                                        fontSize: 13
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sarah Ahmed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hi Sarah, How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5
                                    ),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '3:30 AM',
                                    style:TextStyle(
                                        fontSize: 13
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sarah Ahmed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hi Sarah, How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5
                                    ),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '3:30 AM',
                                    style:TextStyle(
                                        fontSize: 13
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sarah Ahmed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hi Sarah, How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5
                                    ),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '3:30 AM',
                                    style:TextStyle(
                                        fontSize: 13
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sarah Ahmed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hi Sarah, How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5
                                    ),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '3:30 AM',
                                    style:TextStyle(
                                        fontSize: 13
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 1,
                                  end: 1
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sarah Ahmed',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hi Sarah, How are you?',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:TextStyle(
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5
                                    ),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '3:30 AM',
                                    style:TextStyle(
                                        fontSize: 13
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
