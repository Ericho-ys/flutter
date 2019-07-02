import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(
          'Flutter Container Widget Demo',
        ),
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            height: 40.0,
            alignment: Alignment.center,
            child: new Text(
              '一：Container 组件',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.centerLeft,
            child: new Text('padding:定义容器的内边距'),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.centerLeft,
            child: new Text('margin:定义容器的外边距'),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.centerLeft,
            child: new Text('child:定义子组件'),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            alignment: Alignment.centerLeft,
            child: new Text('alignment:定义子组件对齐方式'),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            transform: Matrix4.rotationZ(0.1),
            alignment: Alignment.centerLeft,
            child: new Text('transform:定义子组件旋转'),
          ),
        ],
      ),
    );
  }
}
