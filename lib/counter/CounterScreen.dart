import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
   CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onPressed: ()=> setState(() {
                  counter++;
                }),
                child: const Text(
                  'PLUS'
                )
            ),
             Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Text(
                '0',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
            ),
            TextButton(
                onPressed: ()=> setState(() {
                  counter--;
                }),
                child: const Text(
                    'MINUS'
                )
            ),
          ],
        ),
      ),
    );
  }
}
