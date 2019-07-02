import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: new Imgs(),
    );
  }
}

class Imgs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: <Widget>[
        new Container(
          height: 50.0,
          padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Assets Image',
            style: TextStyle(fontSize: 25.0),
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.asset(
            'images/childOnlineBg.png',
            fit: BoxFit.contain,
            width: 200.0,
            height: 200.0,
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.asset(
            'images/childOnlineBg.png',
            fit: BoxFit.cover,
            width: 200.0,
            height: 200.0,
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.asset(
            'images/childOnlineBg.png',
            fit: BoxFit.fill,
            width: 200.0,
            height: 200.0,
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.asset(
            'images/childOnlineBg.png',
            fit: BoxFit.fitHeight,
            width: 200.0,
            height: 200.0,
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.asset(
            'images/childOnlineBg.png',
            fit: BoxFit.fitWidth,
            width: 200.0,
            height: 200.0,
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.asset(
            'images/childOnlineBg.png',
            fit: BoxFit.none,
            width: 200.0,
            height: 200.0,
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.asset(
            'images/childOnlineBg.png',
            fit: BoxFit.scaleDown,
            width: 200.0,
            height: 200.0,
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.asset(
            'images/childOnlineBg.png',
            fit: BoxFit.values[2],
            width: 200.0,
            height: 200.0,
          ),
        ),
        new Container(
          height: 50.0,
          padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Network Image',
            style: TextStyle(fontSize: 25.0),
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.network(
            'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
            fit: BoxFit.cover,
            width: 200.0,
            height: 200.0,
          ),
        ),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          alignment: Alignment.centerLeft,
          decoration:
              BoxDecoration(border: Border.all(width: 1.0, color: Colors.red)),
          child: Image.network(
            'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
            fit: BoxFit.cover,
            color: Colors.red,
            colorBlendMode: BlendMode.colorDodge,
            width: 200.0,
            height: 200.0,
          ),
        ),
      ],
    );
  }
}
