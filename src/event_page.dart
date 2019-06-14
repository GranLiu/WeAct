/// This page contains the code for the specific page of every event.
///

// External libraries imports
import 'package:flutter/material.dart';

// Internal imports
import 'event.dart';
import 'theme.dart';
import "home_page.dart";
import "user.dart";

enum AppBarBehavior { normal, pinned, floating, snapping }

class EventPage extends StatelessWidget {
  EventPage({this.event, this.homeScaffoldKey});

  final Event event;

  final String routeName = '/event-page';
  final GlobalKey<ScaffoldState> homeScaffoldKey;

  final AppBarBehavior _appBarBehavior = AppBarBehavior.pinned;
  final double _appBarHeight = 256.0;

  @override
  Widget build(BuildContext context) {
    if(event.status==0){
    return new Scaffold(
        backgroundColor: Colors.white,
        body: new CustomScrollView(slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: _appBarHeight,
            pinned: _appBarBehavior == AppBarBehavior.pinned,
            floating: _appBarBehavior == AppBarBehavior.floating ||
                _appBarBehavior == AppBarBehavior.snapping,
            snap: _appBarBehavior == AppBarBehavior.snapping,
            flexibleSpace: new FlexibleSpaceBar(
              title: new Text(
                event.name,
                textAlign: TextAlign.left,
                ),
                centerTitle: true,
              background: new Stack(
                alignment: AlignmentDirectional.centerStart,
                fit: StackFit.expand,
                children: <Widget>[
                  new Image.asset('images/WIPs.jpg'),
                  // This gradient ensures that the toolbar icons are distinct
                  // against the background image.
                  const DecoratedBox(
                    decoration: const BoxDecoration(
                      gradient: const LinearGradient(
                        begin: const Alignment(0.0, -1.0),
                        end: const Alignment(0.0, -0.4),
                        colors: const <Color>[
                          const Color(0xFF000000),
                          const Color(0x40000000)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate(<Widget>[
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                ),
                child: new Padding(
                  padding: const EdgeInsets.only(
                      left: 26.0, top: 13.0, right: 26.0, bottom: 13.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: new Text(
                          'Description',
                          style: new TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: primary),
                        ),
                      ),
                      new Text(
                        event.description,
                        style: pinderyTextStyle,
                      ),
                      new Container(
                        //button
                        padding: new EdgeInsets.all(8.0),
                        child: Opacity(
                          opacity: 0.95,
                        child: new RaisedButton(
                          color: Color(0xFF009cff),
                          onPressed: () {
                            event.status=1;
                            User tester = new User(email: "email", name:"YoungXi", campus: "JiaDing", wechatID: "1753485");
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage(user:tester)));
                          },
                          child: new Text('Join!',
                              style: new TextStyle(
                                  fontSize: 15.0,
                                  color: secondaryLight,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.75)),
                         ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )
          
        ]));
    }
    else{
      return new Scaffold(
        backgroundColor: Colors.white,
        body: new CustomScrollView(slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: _appBarHeight,
            pinned: _appBarBehavior == AppBarBehavior.pinned,
            floating: _appBarBehavior == AppBarBehavior.floating ||
                _appBarBehavior == AppBarBehavior.snapping,
            snap: _appBarBehavior == AppBarBehavior.snapping,
            flexibleSpace: new FlexibleSpaceBar(
              title: new Text(
                event.name,
                textAlign: TextAlign.left,
                ),
                centerTitle: true,
              background: new Stack(
                alignment: AlignmentDirectional.centerStart,
                fit: StackFit.expand,
                children: <Widget>[
                  new Image.asset('images/WIPs.jpg'),
                  // This gradient ensures that the toolbar icons are distinct
                  // against the background image.
                  const DecoratedBox(
                    decoration: const BoxDecoration(
                      gradient: const LinearGradient(
                        begin: const Alignment(0.0, -1.0),
                        end: const Alignment(0.0, -0.4),
                        colors: const <Color>[
                          const Color(0xFF000000),
                          const Color(0x40000000)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate(<Widget>[
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                ),
                child: new Padding(
                  padding: const EdgeInsets.only(
                      left: 26.0, top: 13.0, right: 26.0, bottom: 13.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: new Text(
                          'Description',
                          style: new TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: primary),
                        ),
                      ),
                      new Text(
                        event.description,
                        style: pinderyTextStyle,
                      ),
                      new Container(
                        //button
                        padding: new EdgeInsets.all(8.0),
                        child: Opacity(
                          opacity: 0.95,
                        child: new RaisedButton(
                          color: Color(0xFF009cff),
                          onPressed: () {
                            event.status=1;
                            User tester = new User(email: "email", name:"YoungXi", campus: "JiaDing", wechatID: "1753485");
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage(user:tester)));
                          },
                          child: new Text('HaveJoined!',
                              style: new TextStyle(
                                  fontSize: 15.0,
                                  color: secondaryDark,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.75)),
                         ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )
          
        ]));
    }
  }
}
