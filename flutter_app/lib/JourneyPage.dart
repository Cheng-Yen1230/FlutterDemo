import 'package:flutter/material.dart';


class JourneyPage extends StatefulWidget {
  @override
  _JourneyPageState createState() => _JourneyPageState();
}


class _JourneyPageState extends State {
  TextEditingController textController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(right: 105, top: 15),
            child: Text('Tell Goosy about your journey', style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18
          ),),
         ),
          Container(
            width: 400,
            margin: EdgeInsets.only(left: 1, top: 20),
            child:TextField(
              controller: textController,
                 keyboardType: TextInputType.text,
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.all(20),
                   prefixIcon: Icon(Icons.location_on_outlined),
                   hintText: 'Destination: City, Country',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10), ),
                   )
               ),
               autofocus: false,
          ),
         ),
          Container(
            width: 400,
            margin: EdgeInsets.only(left: 1, top: 20),
            child:TextField(
              controller: dateController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                prefixIcon: Icon(Icons.date_range_outlined),
                hintText: 'Date: From - to',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10), ),
                )
            ),
            autofocus: false,
          )
         ),
          Padding(padding: EdgeInsets.only(right: 185, top: 20),
            child:Text('weather of the month', style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500
            ),),),
          Padding(padding: EdgeInsets.only(top: 20),
              child:Center(
                child:Text('May', style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700,
          ),),)),
        ],
      ),
    );
  }
}
