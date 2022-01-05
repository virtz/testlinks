import 'package:flutter/material.dart';

class BlinkingTextAnimation extends StatefulWidget {
  final String? text;
  const BlinkingTextAnimation({Key? key, this.text}) : super(key: key);

  @override
  _BlinkingTextAnimationState createState() => _BlinkingTextAnimationState();
}

class _BlinkingTextAnimationState extends State<BlinkingTextAnimation>
    with SingleTickerProviderStateMixin {
  Animation<Color?>? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    final CurvedAnimation curve =
        CurvedAnimation(parent: controller!, curve: Curves.ease);

    animation =
        ColorTween(begin: Colors.white, end:const Color(0xFFeb8662))
            .animate(curve);

    animation!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller!.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller!.forward();
      }
      setState(() {});
    });

    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation!,
        builder: (BuildContext context, Widget? child) {
          return Text(widget.text!,
              style: TextStyle(color: animation!.value!, fontSize: 27));
        });
  }

  @override
  dispose() {
    controller!.dispose();
    super.dispose();
  }
}
