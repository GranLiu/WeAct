import 'package:flutter/material.dart';
import 'login_page.dart';


void main() => {runApp(new MyApp())};

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:'WeAct',
      home: new LoginPage(),
    );
  }
}

class WeActApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:'WeAct',
      home:new LoginPage(),
    );
  }
}

const String _name = "hekaiyou";

class ChatMessage extends StatelessWidget{
  final String text;
  ChatMessage(this.text);
  
  Widget build(BuildContext context){
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      
      child: new Row(children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(right:16.0),
          child: new CircleAvatar(child: new Text(_name[10])),
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(_name,style:Theme.of(context).textTheme.subhead),
            new Container(
              margin: const EdgeInsets.only(top:5.0),
              child: new Text(text),
            )
          ],
        )
      ],)
    );
  }
}

class LoginPage extends StatefulWidget{
  
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>{

  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  void _handleSubmitted(String text){
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text : text,
    );
    setState(() {
     _messages.insert(0, message); 
    });
  }

  Widget _buildTextComposer(){
    return new IconTheme(
      data: new IconThemeData(color:Theme.of(context).accentColor),
    child: new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(
        border: new Border.all(width: 1.0, color: Colors.orange),
      ),
      
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: new InputDecoration.collapsed(hintText: 'send message'),
            )
          ),
          new Container(
              margin: new EdgeInsets.symmetric(horizontal: 50.0),
              child: new IconButton(
                icon:new Icon(Icons.send),
                onPressed: ()=> _handleSubmitted(_textController.text),
            )
          )
        ]
      )
    )
    );
  }

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('WeAct')
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_,int index)=> _messages[index],
              itemCount: _messages.length,
            )
          ),
          new Divider(height:1.0),
          new Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          )
        ],
      )
    );
  }
}

