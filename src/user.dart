/// Manages the user of the application.
library user;

/// Class to define the application's user
class User {
  User({this.email, this.name, this.campus, this.wechatID});

  /// The user's name.
  String name;

  /// The user's campus.
  String campus;

  /// The user's email.
  String email;

  /// The wechat of the user.
  String wechatID;

  // /// The rating given to the user, by the participants to the parties the user organised.
  // double rating;

  // /// The number of reviews the user was given by the participants to the parties the user organised.
  // int numberOfReviews;

  // /// The number of thumbs-ups given by the organisers of the parties the user took part to.
  // /// See [feedback].
  // int thumbsUpByOrganisers;

  // /// The total number of feedbacks (thumbs-ups and thumb-downs) received by the user as
  // /// participant to parties. See [feedback].
  // int numberOfFeedbacks;

  // /// The feedback (in percentage) of the user as participant to the party.
  // /// This is related to the reliability of the user in bringing what he is supposed to.
  // double get feedback => (thumbsUpByOrganisers / numberOfFeedbacks) * 100;

}
