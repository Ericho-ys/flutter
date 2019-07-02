import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text('Flutter Image Widget'),
        ),
        body: new ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  height: 40.0,
                  alignment: Alignment.center,
                  child: new Text(
                    '一：加载本地图片',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                new Image.asset(
                  'images/childOnlineBg.png',
                  width: 200.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            new Column(
              children: <Widget>[
                new Container(
                  height: 40.0,
                  alignment: Alignment.center,
                  child: new Text(
                    '一：加载网络图片',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                new Image.network('http://pic37.nipic.com/20140113/8800276_184927469000_2.png'),
              ],
            )
          ],
        ));
  }
}
