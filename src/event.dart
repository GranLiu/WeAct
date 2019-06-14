library event;
// Core imports
import 'dart:async';
import 'dart:io';

// Internal imports
import 'user.dart';

/// Class that defines every Event object in the app.
class Event {
  // ... continuation of the class ...
  Event({
    this.name = "zz",
    this.time,
    this.organiserUid,
    this.place,
    this.localImageFile,
    this.city,
    this.maxNumber,
    this.minNumber,
    this.description,
    this.organiser,
  });


  /// The name of the party.
  String name = "zz";

  /// The beginning day and time of the party, chosen by the organiser.
  String time;

  /// The UID of the organiser.
  String organiserUid;

  /// The place of the party.
  String place;

  /// The file of the image chosen locally by the party organiser.
  String localImageFile;

  /// The default campus used to show parties until we will introduce the possibility to choose the city.
  String city = "JiaDing";

  /// The rating of the organiser, will be deprecated, since it's a characteristic of [User] class.
  // double rating;

  /// The max number of members of the event.
  int maxNumber;

  /// The number of necessary pinder points to participate to the event.
  int minNumber;

  /// The status of the event (0==initial, 1==joined)
  int status=0;

  /// The description for the party. it is chosen by the organiser.
  String description;

  User organiser;

  //TODO: WeAct we need to finish this, its fake now
  Future<Null> handleParticipation() async {
    // print('Handling participation');
    // Party party = await _getPartyFromFirestore(id);
    // print('\nIn handleParticipation the local catalogue is:');
    // catalogue.printCatalogue();
    // party.catalogue.update(catalogue);
    // print('\nAfter update:');
    // party.catalogue.printCatalogue();
    // await party._updateParty();
    print('Done, theoretically');
  }

}
