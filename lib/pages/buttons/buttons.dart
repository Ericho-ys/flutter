import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new raisedBtns();
  }
}

class raisedBtns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        leading: IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ),
      body: new Center(
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Raised Button',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: new RaisedButton(
                onPressed: null,
                child: Text(
                  'Disabled Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: new RaisedButton(
                onPressed: () {},
                child: Text(
                  'Enabled Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: new RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                    Colors.red[600],
                    Colors.red[300],
                    Colors.white
                  ])),
                  padding: const EdgeInsets.all(10.0),
                  child:
                      Text('Gradient Button', style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Outline Button',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: new OutlineButton(
                borderSide: BorderSide(width: 2.0, color: Colors.red[50]),
                highlightedBorderColor: Colors.red[500],
                highlightColor: Colors.red[700],
                child: Text(
                  'Outlline Button',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[300]),
                ),
                onPressed: () => {},
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'FlatButton Button',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: new FlatButton(
                highlightColor: Colors.red[700],
                child: Text(
                  'FlatButton Button',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[300]),
                ),
                onPressed: () => {},
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Icon Button',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: new IconButton(
                splashColor: Colors.red[700],
                highlightColor: Colors.red[700],
                icon: Icon(Icons.thumb_up),
                onPressed: () => {},
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: Ink(
                decoration: ShapeDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[Colors.red, Colors.red[100]]),
                    shape: CircleBorder()),
                child: new IconButton(
                  highlightColor: Colors.red,
                  color: Colors.white,
                  icon: Icon(Icons.thumb_up),
                  onPressed: () => {},
                ),
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'DIY Button',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: new FlatButton(
                color: Colors.red,
                highlightColor: Colors.red,
                colorBrightness: Brightness.dark,
                splashColor: Colors.red,
                child: Text(
                  'DIY Button',
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {},
              ),
            ),
            new Container(
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: new RaisedButton(
                color: Colors.red,
                highlightColor: Colors.red,
                colorBrightness: Brightness.dark,
                splashColor: Colors.red,
                child: Text(
                  'DIY Button',
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
