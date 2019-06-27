import 'package:flutter/material.dart';
//import './pages/test/test.dart';
// import './pages/buttons/buttons.dart';
import './pages/checks/check.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter App',
      home: new checks(),
    );
  }
}

