import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
   double width=double.infinity,
   Color background=Colors.blue,
  required VoidCallback function,
  required String text
}) =>
    Container(
      width: width,
      color: background,
      height: 40.0,
      child: MaterialButton(
        child: Text(
          text.toUpperCase(),
        ),
        onPressed: function,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );