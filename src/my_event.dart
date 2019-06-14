// External imports
import "package:flutter/material.dart";

// Internal imports
import "event_card.dart";
import "event.dart";
import "user.dart";
import "home_page.dart";
import "CreateEventPage.dart";
import "event_list.dart";

const String testCampus1 = "SiPing";
const String testCampus2 = "JiaDing";

class MyEventList extends StatelessWidget {
  MyEventList({this.homeScaffoldKey});

  final String campusS = testCampus1;
  final String campusJ = testCampus2;
  final GlobalKey<ScaffoldState> homeScaffoldKey;

  @override
  Widget build(BuildContext context) {

    if(judge == 0){
      List<Event> eventSamples = [event1, event2, event3, event4];

      return new ListView.builder(
        padding:
          new EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 80.0),
        reverse: false,
        itemBuilder: (_, int index) {
          if (eventSamples[index].status==1)
          return new EventCard(
            event: eventSamples[index],
            homeScaffoldKey: homeScaffoldKey,
          );
        },
        itemCount: 4,
        scrollDirection: Axis.vertical,
      );
    }

    else{
      List<Event> eventSamples = [manual, event1, event2, event3, event4];

      return new ListView.builder(
        padding:
          new EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 80.0),
        reverse: false,
        itemBuilder: (_, int index) {
          if (eventSamples[index].status==1)
          return new EventCard(
            event: eventSamples[index],
            homeScaffoldKey: homeScaffoldKey,
          );
        },
        itemCount: 5,
        scrollDirection: Axis.vertical,
      );
    }

  }
}
