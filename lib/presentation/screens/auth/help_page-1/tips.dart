// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ajeo/utils/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_html/flutter_html.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
          // Icon(Icons.cancel, color: Colors.red),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Container(
              height: 150.h,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/tips.png'))),
              child: GestureDetector(
                onTap: () {
                  AutoRouter.of(context).pop();
                },
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.cancel,
                        color: Theme.of(context).primaryColor)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Getting Started",
                    style: TextStyle(
                        fontSize: 18.sp, fontWeight: FontWeight.w700)),
                SizedBox(height: 5.h),
                Html(data: htmlData),
              ],
            ),
          ),
          // const Text('Help',
          //     style: TextStyle(
          //         color: Colors.grey,
          //         fontSize: 17.5,
          //         fontWeight: FontWeight.w600,
          //         fontFamily: 'helves'))
        ])),
        bottomSheet: Container(
            color: Colors.white,
            height: 100.h,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 15.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Help',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17.5,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'helves'),
                      ),
                      SizedBox(height: 10.h),
                      const Text('About Us',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17.5,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'helves'))
                    ]),
              ),
            )),
      ),
    );
  }
}
