import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Flutter Text Widget Demo'),
      ),
      body: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Container(
            height: 40.0,
            alignment: Alignment.center,
            child: new Text(
              '一：Text Widget组件',
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
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.topLeft,
            child: new Text(
              'Maxlines:Text组件最大显示的行数',
              style: TextStyle(fontSize: 18.0, color: Colors.black26),
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.topLeft,
            child: new Text(
              'textAlign:Text组件文字对齐方式',
              style: TextStyle(fontSize: 18.0, color: Colors.black26),
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.topLeft,
            child: new Text(
              'overflow:Text组件文字文字超出显示方式（大数据量大数据库打开垃圾打卢克进的垃圾收到了卡吉林大街塑料袋）',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18.0, color: Colors.black26),
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.topLeft,
            child: new Text(
              'overflow:Text组件文字文字超出显示方式（大数据量大数据库打开垃圾打卢克进的垃圾收到了卡吉林大街塑料袋）',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18.0, color: Colors.black26),
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.topLeft,
            child: new Text(
              'style:Text组件文字样式',
              style: TextStyle(fontSize: 18.0, color: Colors.black26),
            ),
          ) 
        ],
      ),
    );
  }
}
