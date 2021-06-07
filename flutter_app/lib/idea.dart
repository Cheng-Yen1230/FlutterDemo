import 'package:flutter/material.dart';


class idea extends StatefulWidget {
  @override
  _ideaState createState() => _ideaState();
}


class _ideaState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Text('規劃', style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.w700,
            fontSize: 100,
          ),),
        )
    );
  }
}