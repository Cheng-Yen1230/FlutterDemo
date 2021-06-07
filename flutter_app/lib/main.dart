import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'JourneyPage.dart';
import 'Menu.dart';
import 'Notify.dart';
import 'SearchPage.dart';
import 'idea.dart';

// image: https://images-na.ssl-images-amazon.com/images/G/01/AmazonExports/Projects/Outlet/Amazon_OutletDeals_Desktop_TW.jpg

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) {
      return BottomNavigationBarHomePage();
    },
    '/TravelPage': (context) {
      return CreateTravelPage();
    }
  },
  // home: BottomNavigationBarHomePage()
));


// 動態
class BottomNavigationBarHomePage extends StatefulWidget {
  @override
  _BottomNavigationBarHomePageState createState() => _BottomNavigationBarHomePageState();
}

class _BottomNavigationBarHomePageState extends State<BottomNavigationBarHomePage> {
  int index = 0;
  final pages = [
    JourneyPage(),
    SearchPage(),
    idea(),
    Notify(),
    Menu(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(220, 221, 187, 255),
      appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(right: 230),
            child:Text('Harry', style: TextStyle(fontSize: 18),),
          ),
          leading: IconButton(
            icon: Icon(Icons.person, size: 30, ),
            padding: EdgeInsets.only(left: 20),
            tooltip: 'save',
            onPressed : () => debugPrint('hit'),
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 20),
              icon: Icon(Icons.add_circle_outline, size: 30, color: Colors.black54,),
              tooltip: 'Create',
              onPressed: () {
                Navigator.pushNamed(context, '/TravelPage');
              },
            ),
          ],

          backgroundColor: Colors.deepPurple
      ),
      body: pages[index],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int idx) {
          if (idx != index) {
            index = idx;
            setState(() {
            });
          }

        },
        selectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.card_travel_outlined, ), label: 'Journey',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.search, ), label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.lightbulb, ), label: 'idea',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.notifications_on_outlined, ), label: 'Notify',

          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.list_outlined, ), label: 'Menu',
          ),
        ],
      ),
    );
  }
}





class CreateTravelPage extends StatefulWidget {
    @override
  _CreateTravelPageState createState() => _CreateTravelPageState();
}

class _CreateTravelPageState extends State<CreateTravelPage> {
  int currentIndex = 0;
  final pages = [
    JourneyPage(),
    SearchPage(),
    idea(),
    Notify(),
    Menu(),
  ];
  void OnChangeScreen(int idx) {
    if (idx != currentIndex) {
      setState(() {
        currentIndex = idx;
        pages[currentIndex];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(right: 90),
          child: Text('Create New Journey'),
        ),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: () {
                print('save');
          },
              icon: Icon(Icons.save_outlined, size: 35,),
              padding: EdgeInsets.only(right: 30),
          )
        ],
      ),
      body: pages[currentIndex],
      /*Center(
          child: Text('APP', style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 100, fontWeight: FontWeight.w900
          ),)),*/

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: OnChangeScreen,
        selectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.card_travel_outlined, ), label: 'Journey',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.search, ), label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.lightbulb, ), label: 'idea',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.notifications_on_outlined, ), label: 'Notify',

          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(Icons.list_outlined, ), label: 'Menu',
          ),
        ],
      ),
    );
  }
}










