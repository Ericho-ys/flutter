import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class checks extends StatefulWidget {
  _checkState createState() => new _checkState();
}

class _checkState extends State<checks> {
  bool _switchSelected = true;
  bool _switchSelectedForIOS = true;
  bool _switchSelectedForIOSColor = true;
  bool _checkboxSelected = true;
  bool _checkboxSelectedforCoor = true;
  /*---------------------------------------- SwitchListTitle ---------------------------------*/
  bool _lights = true;
  /*---------------------------------------- CheckBox ---------------------------------*/
  bool _checkBoxFlag = true;
  /*---------------------------------------- Radio ---------------------------------*/
  String _radioFlag = 'a';
  /*---------------------------------------- slider ---------------------------------*/
  double _max = 100.0;
  double _min = 0.0;
  double _value = 0.0;
  double _value2 = 0.0;
  double _value3 = 0.0;
  dynamic cent = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('checks'),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Switch',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: new CupertinoSwitch(
              value: _switchSelectedForIOS,
              onChanged: (value) {
                setState(() {
                  _switchSelectedForIOS = value;
                });
              },
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: new CupertinoSwitch(
              activeColor: Colors.red,
              value: _switchSelectedForIOSColor,
              onChanged: (value) {
                setState(() {
                  _switchSelectedForIOSColor = value;
                });
              },
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: new Switch(
              activeTrackColor: Colors.red,
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: new Switch(
              activeColor: Colors.red,
              value: _checkboxSelectedforCoor,
              onChanged: (value) {
                setState(() {
                  _checkboxSelectedforCoor = value;
                });
              },
            ),
          ),
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'SwitchListTile',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: SwitchListTile(
              title: const Text('Lights'),
              value: _lights,
              onChanged: (bool value) {
                setState(() {
                  _lights = value;
                });
              },
              secondary: const Icon(Icons.lightbulb_outline),
            ),
          ),
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Checkbox',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Checkbox(
              value: _checkBoxFlag,
              onChanged: (value) {
                setState(() {
                  _checkBoxFlag = value;
                });
              },
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Checkbox(
              value: _checkBoxFlag,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _checkBoxFlag = value;
                });
              },
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Checkbox(
              value: _checkBoxFlag,
              checkColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _checkBoxFlag = value;
                });
              },
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Checkbox(
              value: _checkBoxFlag,
              checkColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _checkBoxFlag = value;
                });
              },
            ),
          ),
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Radio',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          new Container(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: new Column(
                children: <Widget>[
                  Radio(
                    value: 'a',
                    groupValue: _radioFlag,
                    onChanged: (value) {
                      setState(() {
                        _radioFlag = value;
                      });
                    },
                  ),
                  Radio(
                    value: 'b',
                    groupValue: _radioFlag,
                    onChanged: (value) {
                      setState(() {
                        _radioFlag = value;
                      });
                    },
                  ),
                ],
              )),
          new Container(
              alignment: Alignment.centerLeft,
              child: new Column(
                children: <Widget>[
                  RadioListTile(
                    title: Text('a'),
                    value: 'a',
                    groupValue: _radioFlag,
                    onChanged: (value) {
                      setState(() {
                        _radioFlag = value;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('b'),
                    value: 'b',
                    groupValue: _radioFlag,
                    onChanged: (value) {
                      setState(() {
                        _radioFlag = value;
                      });
                    },
                  ),
                ],
              )),
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Slider',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Slider(
              activeColor: Colors.red,
              inactiveColor: Colors.grey[300],
              divisions: 5,
              label: '$_value Slider',
              max: _max,
              min: _min,
              onChanged: (value){
                setState(() {
                 _value = value;
                });
                print('changing: ${value}');
              },
              onChangeEnd: (value) {
                print('end: ${value}');
              },
              onChangeStart: (value){
                print('start: ${value}');
              },
              value: _value,
            ),
          ),
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Slider(
              activeColor: Colors.red,
              inactiveColor: Colors.grey[300],
              divisions: 100,
              label: '$cent %Slider',
              max: _max,
              min: _min,
              onChanged: (value){
                setState(() {
                 _value2 = value;
                cent = _value2.round();
                });
                print('changing: ${value}');
              },
              onChangeEnd: (value) {
                print('end: ${value}');
              },
              onChangeStart: (value){
                print('start: ${value}');
              },
              value: _value2,
            ),
          ),
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Slider(
              activeColor: Colors.red,
              inactiveColor: Colors.grey[300],
              max: _max,
              min: _min,
              onChanged: (value){
                setState(() {
                 _value3 = value;
                });
                print('changing: ${value}');
              },
              onChangeEnd: (value) {
                print('end: ${value}');
              },
              onChangeStart: (value){
                print('start: ${value}');
              },
              value: _value3,
            ),
          ),
        ],
      ),
    );
  }
}
