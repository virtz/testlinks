// ignore_for_file: deprecated_member_use

import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondWalkthrough extends StatefulWidget {
  final PageController? controller;
  const SecondWalkthrough({Key? key, this.controller}) : super(key: key);

  @override
  _SecondWalkthroughState createState() => _SecondWalkthroughState();
}

class _SecondWalkthroughState extends State<SecondWalkthrough> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).replace(HomeNonPremium());
                        },
                        child: Text('Skip',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700)),
                      )),
                  SizedBox(
                    height: 60.h,
                  ),
                  Text('Explore Our Detailed',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700)),
                  Text('Subcategories',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700)),
                  Image.asset('assets/images/Group_1126.png'),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                      'Find various products & services, from our comprehensive list',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500))
                ])));
  }
}
