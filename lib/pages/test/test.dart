
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.initValue: 0});
  final int initValue;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter;
  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('build');
    return new Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: new ListView(
          children: <Widget>[
            Center(
              child: FlatButton(
                child: Text(
                  '$_counter',
                  style: TextStyle(fontSize: 32.0),
                ),
                onPressed: () => setState(() => ++_counter),
              ),
            ),
            new Container(
              height: 40.0,
              alignment: Alignment.center,
              child: Text(
                '管理自身状态',
                style: TextStyle(fontSize: 25.0, color: Colors.black54),
              ),
            ),
            new TapboxA(),
            new Container(
              height: 40.0,
              alignment: Alignment.center,
              child: Text(
                '父组件管理状态',
                style: TextStyle(fontSize: 25.0, color: Colors.black54),
              ),
            ),
            new TapboxBParent(),
            new Container(
              height: 40.0,
              alignment: Alignment.center,
              child: Text(
                '混合管理状态',
                style: TextStyle(fontSize: 25.0, color: Colors.black54),
              ),
            ),
            new TapboxCParent()
          ],
        ));
  }

  @override
  void didUpdataWidget(MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdataWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}

//TapboxA
//---------------------------------------------- TapboxA -------------------

class TapboxA extends StatefulWidget {
  TapboxA({Key key}) : super(key: key);

  @override
  _TapboxAState createState() => new _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
        onTap: _handleTap,
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: new BoxDecoration(
              color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
          child: Center(
            child: Text(_active ? 'Active' : 'Inactive',
                style: TextStyle(fontSize: 32.0, color: Colors.white)),
          ),
        ));
  }
}

// TapboxB, TapboxBParent为 TapboxB 管理状态
//---------------------------------------------- TapboxB -------------------
class TapboxBParent extends StatefulWidget {
  @override
  _TapboxBParentState createState() => new _TapboxBParentState();
}

class _TapboxBParentState extends State<TapboxBParent> {
  bool _active = false;
  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new TapboxB(active: _active, onChanged: _handleTapboxChanged),
    );
  }
}

class TapboxB extends StatelessWidget {
  TapboxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);
  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600]),
        child: Center(
          child: Text(active ? 'Active' : 'Inactive',
              style: new TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
      ),
    );
  }
}
// TapboxC, TapboxCParent为 TapboxC 管理状态, TapboxC管理自己的状态
//---------------------------------------------- TapboxC -------------------

class TapboxCParent extends StatefulWidget {
  @override
  _TapboxCParentState createState() => new _TapboxCParentState();
}

class _TapboxCParentState extends State<TapboxCParent> {
  bool _active = false;
  void _handeParentTap(newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TapboxC(
      active: _active,
      onChanged: _handeParentTap,
    );
  }
}

class TapboxC extends StatefulWidget {
  TapboxC({Key key, this.active, @required this.onChanged}) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;
  @override
  _TapboxCState createState() => new _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    _highlight = false;
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      child: new Container(
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: _highlight
                ? new Border.all(color: Colors.teal[700], width: 10.0)
                : null),
        child: new Center(
            child: Text(
          widget.active ? 'Active' : 'Inactive',
          style: TextStyle(fontSize: 32.0, color: Colors.white),
        )),
      ),
    );
  }
}
