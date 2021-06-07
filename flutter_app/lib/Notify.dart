import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}


class _NotifyState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Text('通知', style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.w700,
            fontSize: 100,
          ),),
        )
    );
  }
}