// ignore_for_file: avoid_unnecessary_containers

import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/first_walkthrough.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/fourth_walkthrough.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/second_walkthrough.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/third_walkthrough.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({Key? key}) : super(key: key);

  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  final controller = PageController(viewportFraction: 0.95);
  @override
  Widget build(BuildContext context) {
    final List<Widget> introWidgetList = [
      FirstWalkthrough(controller: controller),
      SecondWalkthrough(controller: controller),
      ThirdWalkthrough(controller: controller),
      FourthWalkthrough(controller: controller),
    ];
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              physics: const ClampingScrollPhysics(),
              itemCount: introWidgetList.length,
              itemBuilder: (context, index) {
                return introWidgetList[index];
              },
            ),
            Positioned(
              bottom: 30.0,
              left: 0.0,
              right: 0.0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: introWidgetList.length,
                  effect: SlideEffect(
                    spacing: 8.0,
                    radius: 4.0,
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    dotColor: Theme.of(context).primaryColor,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 2,
                    activeDotColor: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            // new DotsIndicator(
            //   decorator: DotsDecorator(
            //     color: Colors.white,
            //   ),
            //   dotsCount: introWidgetList.length, position: 0)
          ],
        ),
      ),
    );
  }
}
