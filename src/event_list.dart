// External imports
import "package:flutter/material.dart";

// Internal imports
import "event_card.dart";
import "event.dart";
import "user.dart";
import "home_page.dart";
import "CreateEventPage.dart";

import "dart:io";

const String testCampus1 = "SiPing";
const String testCampus2 = "JiaDing";

User tester = new User(email: "email", name: "YoungXi", campus: campusJ, wechatID: "1753485");

final String campusS = testCampus1;
final String campusJ = testCampus2;

String imageFile1 = "images/soccer.jpg";
String imageFile2 = "images/basketball.jpg";
String imageFile3 = "images/picnic.jpg";
String imageFile4 = "images/study.jpg";

Event event1 = new Event(
    name: "Soccer match tonight!",
    time: "07.18",
    organiserUid: "1753485",
    place: campusS,
    localImageFile: imageFile1,
    maxNumber: 20,
    minNumber: 10,
    description:
      "My favorate sport is soccer, for it gives me more chances to get to know more friends, and let me know how to cooperate with others. If you are the same with me, do join my event!",
    organiser: tester);

Event event2 = new Event(
    name: "Best Basketball event!",
    time: "05.20",
    organiserUid: "1753485",
    place: campusS,
    localImageFile: imageFile2,
    maxNumber: 20,
    minNumber: 10,
    description:
        "Basketball is very popular in the world. Many young people like playing basketball. It is my favorite sport. I'm a basketball fan of Lebron James. Want to play with me?",
    organiser: tester);

Event event3 = new Event(
    name: "Picnic in the Campus!",
    time: "06.24",
    organiserUid: "1753485",
    place: campusS,
    localImageFile: imageFile3,
    maxNumber: 20,
    minNumber: 10,
    description:
      "Barbecuing on the grass land of the park and sharing the food together. Play games like hide-and-see and talk to each other about our life these days. Enjoy the nice weather and the warm friendship. Let's have a picnic together!",
    organiser: tester);

Event event4 = new Event(
    name: "Study group in Library!",
    time: "08.31",
    organiserUid: "1753485",
    place: campusS,
    localImageFile: imageFile4,
    maxNumber: 20,
    minNumber: 10,
    description:
        "I like reading books. There are many people in the library, but it is very quiet. Nobody talks in the room, only the sound of page turning. I’m very interested in the space, so I read a lot of books about space. Recently, I read the book Martian. Do you want to join me?",
    organiser: tester);

class EventCardList extends StatelessWidget {
  EventCardList({this.homeScaffoldKey});

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
