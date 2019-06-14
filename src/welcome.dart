/// This page contains the code for the welcoming page of the app.
///

import 'package:flutter/material.dart';

import 'login_page.dart';
import 'dart:async';

class SplashScreenOne extends StatefulWidget {
  @override
  _SplashScreenOneState createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).push(PageRouteBuilder(
              opaque: true,
              transitionDuration: Duration(milliseconds: 800),
              pageBuilder: (context, _, __) {
                return new LoginPage();
              },
              /*transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
              return FadeTransition(
                opacity: animation
              );
            }*/
            )));
  }

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: new Color(0xff622F74),
            gradient: LinearGradient(
                colors: [new Color(0xff6094e8), new Color(0xffde5cbc)],
                begin: Alignment.centerRight,
                end: new Alignment(-1.0, -1.0)),
          ),
          constraints: BoxConstraints.expand(height: 300),
          alignment: Alignment.center,
          child: Image.asset(
            "images/Logo.png",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 443.0, left: 145.0),
          child: Text(
            'WeAct',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 32.0,
              fontWeight: FontWeight.w500
            ),
          ),
        )
      ]),
    );
  }
}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    return new FadeTransition(opacity: animation, child: child);
  }
}
