import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget? child;
  CustomPageRoute({this.child})
      : super(
            transitionDuration: const Duration(seconds: 1),
            pageBuilder: (context, animation, secondAnimation) => child!);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      // ScaleTransition(scale: animation, child: child);
      SlideTransition(
          position: Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
              .animate(animation),
          child: child);
}
