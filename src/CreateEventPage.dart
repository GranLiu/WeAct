// edit new event

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'user.dart';
import 'event.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

String campusJ = "Jiading";

User superuser = new User(
        email: "email", name: "YoungXi", campus: campusJ, wechatID: "1753485");

    String imageFile5 = "images/weact.jpg";

Event manual = new Event(
        name: "Picnic in the Campus!",
        time: "06.13",
        organiserUid: "1753485",
        place: campusJ,
        localImageFile: imageFile5,
        maxNumber: 20,
        minNumber: 10,
        description:
            "Barbecuing on the grass land of the park and sharing the food together. Play games like hide-and-see and talk to each other about our life these days. Enjoy the nice weather and the warm friendship. Let's have a picnic together!",
        organiser: superuser);

class CreateEventPage extends StatefulWidget {
  @override

  State<StatefulWidget> createState(){
    return new _CreateEventPageStateState();
  }
}

class  _CreateEventPageStateState extends State< CreateEventPage> {

  final _formKey = GlobalKey<FormState>();
  int maxNum, minNum; 

  TextEditingController nameController = new TextEditingController();
  TextEditingController timeController = new TextEditingController();
  TextEditingController cityController = new TextEditingController();
  TextEditingController idController = new TextEditingController();
  TextEditingController adressController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Create a new Event'),
      ),
         /* bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.lightBlueAccent[100],
          buttonBackgroundColor: Colors.lightBlueAccent[200],
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          //TODO: sistemare tutti i navigator alle pagine giuste e fare in modo che rimanga la bottom nav bar
          onTap: (Icon) {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CreateEventPage()));

             },
          ),*/
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                onFieldSubmitted: (val) =>
                                _formKey.currentState.validate(),
                            controller: nameController,
                            validator: (val) => val.isEmpty
                                ? 'Pick a name for this event!'
                                : null,
                            onSaved: (val) => manual.name = nameController.text,
                keyboardType: TextInputType.text, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'My wonderful Event',
                  labelText: 'Name Event'
                ),
              ),
              new TextFormField(
                onFieldSubmitted: (val) =>
                                _formKey.currentState.validate(),
                            controller: timeController,
                            validator: (val) => val.isEmpty
                                ? 'You must choose a time for you guys.'
                                : null,
                            onSaved: (val) => manual.time = timeController.text,
                keyboardType: TextInputType.datetime,// Use secure text for passwords.
                decoration: new InputDecoration(
                  hintText: '05.27',
                  labelText: 'Date Event'
                )
              ),
              new TextFormField(
                onFieldSubmitted: (val) =>
                                _formKey.currentState.validate(),
                            controller: idController,
                            validator: (val) => val.isEmpty
                                ? 'You must choose a place for this event.'
                                : null,
                keyboardType: TextInputType.number, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: '1756146',
                  labelText: 'School ID Number',
                )
              ),
              new TextFormField(
                onFieldSubmitted: (val) =>
                                _formKey.currentState.validate(),
                            controller: adressController,
                            validator: (val) => val.isEmpty
                                ? 'You must choose a place for this event.'
                                : null,
                            onSaved: (val) => manual.place = adressController.text,
                keyboardType: TextInputType.text, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'Shanghai, Jiading Campus',
                  labelText: 'Event Address'
                )
              ),
              new TextFormField(
                onFieldSubmitted: (val) =>
                                _formKey.currentState.validate(),
                            controller: cityController,
                            validator: (val) => val.isEmpty
                                ? 'So tell me where are we now =.='
                                : null,
                            onSaved: (val) => manual.city = cityController.text,
                keyboardType: TextInputType.text, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'Shanghai',
                  labelText: 'Input City'
                )
              ),
              new TextFormField(
                onFieldSubmitted: (val) =>
                                _formKey.currentState.validate(),
                            controller: descriptionController,
                            validator: (val) => val.isEmpty
                                ? 'Say something about this event?'
                                : null,
                            onSaved: (val) => manual.description = descriptionController.text,
                keyboardType: TextInputType.text, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'Lots of delicious sweets to whomever partecipates',
                  labelText: 'Input description'
                )
              ),
              new Container(
                width: screenSize.width,
                child: new RaisedButton(
                  child: new Text(
                    'Create',
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () async {
                    if(nameController.text!='' && adressController.text!='' && idController.text!='' &&
                       timeController.text!='' && cityController.text!='' && descriptionController.text!=''){
                      manual.place = adressController.text;
                      manual.name = nameController.text;
                      manual.city = cityController.text;
                      manual.description = descriptionController.text;
                      manual.time = timeController.text;
                      User tester = new User(email: "email", name:"YoungXi", campus: "JiaDing", wechatID: "1753485");
                      judge = 1;
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage(user:tester)));
                    }
                  },
                  color: Colors.blue,
                ),
                margin: new EdgeInsets.only(
                  top: 20.0
                ),
              )
            ],
          ),
        )
      ),
    );
  }
  }