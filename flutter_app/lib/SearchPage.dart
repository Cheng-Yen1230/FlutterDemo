import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}


class _SearchPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Text('搜尋', style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.w700,
            fontSize: 100,
          ),),
        )
    );
  }
}