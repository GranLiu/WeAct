import 'package:flutter/material.dart';
import 'welcome.dart';


void main() => {runApp(new MyApp())};

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:'WeAct',
//      home: new LoginPage(),
      home: new SplashScreenOne(),
    );
  }
}
