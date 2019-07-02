import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 引入页面
import '../test1/test1.dart';
import '../test2/test2.dart';
import '../test3/test3.dart';
import '../test4/test4.dart';

class index extends StatefulWidget {
  _indexState createState() => new _indexState();
}

class _indexState extends State<index> {
  int activeIndex = 0;
  var activePage;

  @override
  void initState() {
    activePage = tabBody[activeIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color.fromARGB(244, 245, 245, 1),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: activeIndex,
        items: tabBars,
        onTap: (index) {
          setState(() {
            activeIndex = index;
            activePage = tabBody[activeIndex];
          });
        },
      ),
      body: activePage,
    );
  }
}

final List<BottomNavigationBarItem> tabBars = [
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('测试1')),
  BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.video_camera), title: Text('测试2')),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.book), title: Text('测试3')),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.book), title: Text('测试4')),
];

final List tabBody = [test1(), test2(), test3(), test4()];
