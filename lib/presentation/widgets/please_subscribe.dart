// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultSubscriptionPrompt extends StatefulWidget {
  const DefaultSubscriptionPrompt({Key? key}) : super(key: key);

  @override
  _DefaultSubscriptionPromptState createState() =>
      _DefaultSubscriptionPromptState();
}

class _DefaultSubscriptionPromptState extends State<DefaultSubscriptionPrompt> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Container(
              height: size.height,
              width: size.width,
              child: Card(
                elevation: 5.0,
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.65,
                    child: SvgPicture.asset(
                      'assets/images/subscribe2.svg',
                    ),
                  ),
                  const Text('Please subscribe to continue',
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                ],
              )))),
    );
  }
}
