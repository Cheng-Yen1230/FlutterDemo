import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}


class _MenuPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Text('菜單', style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.w700,
            fontSize: 100,
          ),),
        )
    );
  }
}