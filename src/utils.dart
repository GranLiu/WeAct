/// Some utils for the app
///

// External libraries imports
import 'package:flutter/material.dart';
import 'package:validate/validate.dart';

// Internal imports
import 'user.dart';
import 'theme.dart';

/// A [CircleAvatar] which checks whether the user has a profile picture or not
/// Actually if the user has a picture, it's not a [CircleAvatar], but a 
/// [MaterialType.circle], so that the image can be cached with a [CachedNetworkImage].
/// There is also the user's initial as placeholder while downloading and in case of error.
class WeactCircleAvatar extends StatelessWidget {
  WeactCircleAvatar({this.user, this.radius = 72.0});
  /// The [User] whose image/name is used for the widget
  final User user;

  /// The the radius of the circle
  final double radius;

  @override

  Widget build(BuildContext context) {
    return new Container(
      height: radius,
      width: radius,
      child: new Material(
        color: secondary,
        type: MaterialType.circle,
        child: new Image.asset(      //TODO:WEACT
          'images/user.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

/// A [Widget] that returns a [Center] widget with the initial of the name passed
/// as parameter, to be used with [WeactCircleAvatar].
class UserInitialWidget extends StatelessWidget {
  UserInitialWidget({this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        name[0],
        style: new TextStyle(color: Colors.white, fontSize: 30.0),
      ),
    );
  }
}

isEmail(String val) {
  try { Validate.isEmail(val); } catch (ArgumentError) {
    return false;
  }

  return true;
}

isAlphaNumeric(String val) {
  try { Validate.isAlphaNumeric(val); } catch (ArgumentError) {
    return false;
  }

  return true;
}