/// This file contains the code for Weact's settings page.
///

// External libraries imports
import 'package:flutter/material.dart';

// Internal imports
import 'theme.dart';
import 'user.dart';
import 'utils.dart';
import 'my_drawer.dart';
import 'welcome.dart';
import 'home_page.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({this.user});

  static const routeName = '/settings';

  final User user;

  static const List<Map<String, dynamic>> _settingsTiles = const [
    {'icon': Icons.lock, 'data': 'Change password', 'widgedBuilder': null},
    {'icon': Icons.mail, 'data': 'Change email', 'widgedBuilder': null},
    {
      'icon': Icons.photo_camera,
      'data': 'Change profile picture',
      'widgedBuilder': null
    },
    {
      'icon': Icons.home,
      'data': 'Back to homepage',
      'widgedBuilder': null
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Settings'),
      ),
      drawer: new WeactDrawer(
        user: user,
        previousRoute: routeName,
      ),
      body: new Column(children: <Widget>[
        new Container(
          height: 175.0,
          width: 400.0,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/basketball.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new SizedBox(
                  child: new WeactCircleAvatar(user: user),
                ),
              ),
              new Expanded(
                flex: 1,
                child: new Column(
                  children: <Widget>[
                    new Text(
                      '${user.name}',
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),
                    new Text(
                      user.email,
                      style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Expanded(
            child: new Column(
                children: _settingsTiles.map((Map<String, dynamic> tile) {
          return new SettingsBlock(
            data: tile['data'],
            icon: tile['icon'],
            widgetBuilder: tile['widgetBuilder'],
          );
        }).toList())),
        new AboutListTile(
          applicationName: 'WeAct',
          applicationVersion: '0.0.1',
          applicationLegalese: 'Contact us: 952604140@qq.com \nYour advice is highly appreciated!',
          icon: new Icon(
            Icons.info,
            color: Colors.black,
          ),
          applicationIcon: new Container(
              height: 50.0,
              width: 50.0,
              child: Image.asset('images/Logo.png')),
        ),
        new ListTile(
          leading: new Icon(
            Icons.exit_to_app,
            color: Colors.black,
          ),
          title: new Text('Log Out'),
          onTap: () async {
            return new MaterialApp(
              title:'WeAct',
//      home: new LoginPage(),
              home: new SplashScreenOne(),
            );
          },
        )
      ]),
    );
  }
}

class SettingsBlock extends StatelessWidget {
  SettingsBlock({this.data, this.icon, this.widgetBuilder});

  final String data;
  final IconData icon;
  final WidgetBuilder widgetBuilder;

  Widget build(BuildContext context) {
    return new Container(
      child: new DefaultTextStyle(
        style: Theme.of(context).textTheme.subhead,
        child: new SafeArea(
            top: false,
            bottom: false,
            child: new ListTile(
              leading: new Icon(icon, color: Colors.lightBlue, size: 21.0),
              title: new Text(
                data,
                textAlign: TextAlign.start,
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.lightBlue,
                ),
              ),
              onTap: () {
                if (widgetBuilder != null) {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: widgetBuilder),
                  );
                }
                else if(data == 'Back to homepage'){
                  User tester = new User(email: "email", name:"YoungXi", campus: "JiaDing", wechatID: "1753485");
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage(user:tester)));
                }
              },
            )),
      ),
    );
  }
}