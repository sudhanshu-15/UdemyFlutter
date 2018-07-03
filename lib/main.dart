import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Udemy Course',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyTextControl(title: 'Assignment 1'),
    );
  }
}

class MyTextControl extends StatefulWidget {
  MyTextControl({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyTextControlState createState() => new _MyTextControlState();
}

class _MyTextControlState extends State<MyTextControl> {
  String _displayString = "Hello World";

  void _changeText() {
    setState(() {
      _displayString =
          _displayString == "Hello World" ? "Hello Flutter" : "Hello World";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MyTextDisplay(
              displayText: _displayString,
            ),
            RaisedButton(
              color: Colors.deepPurple,
              onPressed: _changeText,
              child: Text(
                "Change Text",
                style: ThemeData.dark().textTheme.title,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyTextDisplay extends StatelessWidget {
  final String displayText;

  MyTextDisplay({this.displayText});

  @override
  Widget build(BuildContext context) {
    return Text(
      displayText,
      style: Theme.of(context).textTheme.title,
    );
  }
}
