/// event_card.dart
/// This file contains the code for every event's basic infos card in Pindery's homepage
///

// Core imports
import 'package:flutter/material.dart';

// Internal imports
import 'event.dart';
import 'event_page.dart';
import 'event_list.dart';
import 'theme.dart';

class EventCard extends StatelessWidget {
  EventCard({this.event, this.homeScaffoldKey});

  final Event event;
  final double cardHeight = 211.0;
  final GlobalKey<ScaffoldState> homeScaffoldKey;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        height: cardHeight,
        child: new Stack(
          children: <Widget>[
            new ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child:(      //TODO:WEACT
                    Image.asset(event.localImageFile)
                  ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: 90.0),
              decoration: new BoxDecoration(color: new Color(0x99000000)),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 16.0, bottom: 8.0),
                    child: new Text(
                      event.name,
                      overflow: TextOverflow.ellipsis,
                      style: new TextStyle(fontSize: 28.0, color: Colors.white),
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: new Text(
                            event.time,
                            overflow: TextOverflow.ellipsis,
                            style: new TextStyle(
                                fontSize: 22.0, color: Colors.white),
                          ),
                        ),
                      ),
                      new Container(
                        //button
                        padding: new EdgeInsets.all(8.0),
                        child: Opacity(
                          opacity: 0.95,
                        child: new RaisedButton(
                          color: Color(0xFF009cff),
                          onPressed: () {
                            Navigator.of(context).push(
                              new MaterialPageRoute(
                                builder: (context) => new EventPage(
                                      event: event,
                                      homeScaffoldKey: homeScaffoldKey,
                                    ),
                              ),
                            );
                          },
                          child: new Text('More',
                              style: new TextStyle(
                                  fontSize: 15.0,
                                  color: secondaryLight,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.75)),
                         ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
