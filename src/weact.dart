import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'theme.dart';
import 'home_page.dart' show HomePage;
import 'create/create_event.dart';
import 'user.dart';
import 'my_drawer.dart' show WeactDrawer;
// import 'settings.dart' show SettingsPage;
import 'welcome.dart' show SplashScreenOne;
import 'login_page.dart' show LoginPage;

///
/// The pindery application
class Weact extends StatelessWidget {
  Weact(this.user);

  final GlobalKey<ScaffoldState> homeScaffoldKey =
      new GlobalKey<ScaffoldState>();

  /// The User of the app
  final User user;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: pinderySupportedLocales,
      title: 'Weact',
      theme: pinderyTheme,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new HomePage(
              user: user,
              homeScaffoldKey: homeScaffoldKey,
            ),
        // '/create-event': (BuildContext context) =>
            // new CreateEventPage(homeScaffoldKey, user.wechatID),
        '/drawer': (BuildContext context) => new WeactDrawer(user: user),
        // '/settings': (BuildContext context) => new SettingsPage(
        //       user: user,
        //       firebaseMessaging: _firebaseMessaging,
        //     ),
        '/welcome': (BuildContext context) => new SplashScreenOne(),
        // '/login': (BuildContext context) => new LoginPage(user: user),
        // '/signup': (BuildContext context) => new SignupPage(user: user),
      },
    );
  }
}

List<Locale> pinderySupportedLocales = [
  const Locale('en', ''), // English
];
