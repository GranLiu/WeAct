//Login Page

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'user.dart';
import 'signup.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  Color _eyeColor;

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 0.0),
                      child: Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      padding: EdgeInsets.fromLTRB(18.0, 135.0, 0.0, 0.0),
                      child: Text(
                        'There',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      padding: EdgeInsets.fromLTRB(223.0, 135.0, 0.0, 0.0),
                      child: Text(
                        '.',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ))
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          suffixIcon: IconButton(
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: _eyeColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                  _eyeColor = _isObscure
                                      ? Colors.grey
                                      : Theme.of(context).iconTheme.color;
                                });
                              })),
                      obscureText: _isObscure,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 10.0, left: 20.0),
                      child: InkWell(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.blueAccent,
                        color: Colors.blue,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                User tester = new User(
                                    email: "email",
                                    name: "YoungXi",
                                    campus: "JiaDing",
                                    wechatID: "1753485");
                                if(emailController.text==email && passwordController.text==password){
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            HomePage(user: tester)));}
                                else{
                                  showDialog<Null>(
                                    context: context,
                                    barrierDismissible: false,
                                    builder:(BuildContext context){
                                      return new AlertDialog(
                                        title: new Text('Error!!!'),
                                        content: new SingleChildScrollView(
                                          child: new ListBody(
                                            children: <Widget>[
                                              new Text('Please input the right account info.'),
                                            ],
                                          ),
                                        ),
                                        actions: <Widget>[
                                          new FlatButton(
                                            child: new Text('Thank you'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    }
                                  );
                                }
                              },
                              child: Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: ImageIcon(AssetImage('images/Wechat.png')),
                            ),
                            SizedBox(width: 10.0),
                            Center(
                                child: Text('Log in with WeChat',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'))),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to WeAct?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 5.0),
                InkWell(
                    onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'MontSerrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ))
              ],
            )
          ],
        ));
  }
}
