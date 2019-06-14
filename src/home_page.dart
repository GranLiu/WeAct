///

// External libraries imports
import 'package:flutter/material.dart';
import 'event_list.dart';
import 'package:connectivity/connectivity.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// Internal imports
import 'my_drawer.dart' show WeactDrawer;
import 'user.dart';
import 'welcome.dart';
import 'CreateEventPage.dart';
import 'create/create_event.dart';

/// This file contains the code for Weact's homepage's structure.

int judge = 0;

void main() => runApp(MaterialApp(home: BottomNavBar()));

class HomePage extends StatefulWidget {
  HomePage(
      {this.user,
      this.connectivity,
      this.homeScaffoldKey,
      });

  static const routeName = '/';

  final User user;
  final String title = '             Homepage';
  final GlobalKey<ScaffoldState> homeScaffoldKey;
  final ConnectivityResult connectivity;

  @override
  State<HomePage> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
    int _page = 0;
  
//   void initState() {
//     super.initState();
//     if (widget.user.name != null) {
// //TODO:WEACT
//     }
//   }

  @override
  Widget build(BuildContext context) {
    if (widget.user.name != null) {
      return new Scaffold(
        key: widget.homeScaffoldKey,
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        drawer: new Drawer(
          child: new WeactDrawer(
            user: widget.user,
            previousRoute: HomePage.routeName,
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.lightBlueAccent[100],
          buttonBackgroundColor: Colors.lightBlueAccent[200],
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          //TODO: sistemare tutti i navigator alle pagine giuste e fare in modo che rimanga la bottom nav bar
          onTap: (Icon) {
              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CreateEventPage()));

             },
        ),
        body: 
        new EventCardList(
          homeScaffoldKey: widget.homeScaffoldKey,
        ),
        floatingActionButton: new Opacity(
          opacity: 1.0,
          child: new FloatingActionButton(
            onPressed: () async {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CreateEventPage()));
            },
            child: new Icon(Icons.add),
            heroTag: null,
          ),
        ),
      );
    }
    return new SplashScreenOne();
  }

  
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Text(_page.toString(), textScaleFactor: 10.0),
          ),
        ));
  }
}