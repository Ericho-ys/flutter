import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Flutter Text Widget Demo'),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            height: 40.0,
            alignment: Alignment.center,
            child: new Text(
              '一：Text Widget组件之data',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 25.0, color: Colors.black26),
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.topLeft,
            child: new Text(
              'data:Text组件显示的文字',
              style: TextStyle(fontSize: 18.0, color: Colors.black26),
            ),
          )
        ],
      ),
    );
  }
}
