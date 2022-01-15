import 'package:flutter/material.dart';

class CustomSlideTransition extends StatefulWidget {
  const CustomSlideTransition(
      {Key? key,
      required this.child,
      this.beginOffset = Offset.zero,
      this.endOffset = const Offset(0.1, 0),
      this.seconds = 2})
      : super(key: key);
  final Widget child;
  final Offset beginOffset;
  final Offset endOffset;
  final int seconds;

  @override
  _CustomSlideTransitionState createState() => _CustomSlideTransitionState();
}

class _CustomSlideTransitionState extends State<CustomSlideTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: widget.seconds),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: widget.beginOffset,
    end: widget.endOffset,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linearToEaseOut,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: widget.child,
    );
  }
}
