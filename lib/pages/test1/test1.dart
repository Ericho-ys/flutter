import 'package:flutter/material.dart';

class test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new AnimateBarItem(),
      ),
    );
  }
}

class AnimateBarItem extends StatefulWidget {
  final Duration duration;
  final Size size;
  final VoidCallback onTap;
  final String uncheckedImg;
  final String checkedImg;
  final bool checked;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  const AnimateBarItem({
    this.duration = const Duration(microseconds: 500),
    this.size = const Size(50.0, 50.0),
    this.onTap,
    @required this.uncheckedImg,
    @required this.checkedImg,
    this.checked = false,
    this.backgroundColor = Colors.transparent,
    this.padding = const EdgeInsets.all(8.0)

  });
  _AnimateBarItemState createState() => new _AnimateBarItemState();
}

class _AnimateBarItemState extends State<AnimateBarItem> with TickerProviderStateMixin{
  
  AnimationController _controller;
  CurvedAnimation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    Animation<double> linearAnimation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation = CurvedAnimation(parent: linearAnimation, curve: Curves.easeInOut);
    _controller.forward(from: 1.0);
  }
  @override
  void dispose(){
    super.dispose();
    _controller?.dispose();
  }
  void _playAnimation(){
    _controller.forward(from: 0.0);
  }
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _playAnimation,
      child: Container(
        constraints: BoxConstraints(minWidth: widget.size.width, minHeight: widget.size.height),
        color: widget.backgroundColor,
        child: Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child){
              return new Image.asset(
                widget.checked ? widget.checkedImg : widget.uncheckedImg,
                width: _animation.value * (widget.size.width - widget.padding.horizontal),
                height: _animation.value * (widget.size.height - widget.padding.vertical),
              );
            },
          ),
        ),
      ),
    );
  }
}
