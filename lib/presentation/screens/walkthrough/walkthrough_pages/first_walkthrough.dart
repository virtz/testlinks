// ignore_for_file: deprecated_member_use

import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstWalkthrough extends StatefulWidget {
  final PageController? controller;
  final bool showButton;

  const FirstWalkthrough({Key? key, this.controller,this.showButton = true}) : super(key: key);

  @override
  _FirstWalkthroughState createState() => _FirstWalkthroughState();
}

class _FirstWalkthroughState extends State<FirstWalkthrough> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).push( const SpecialCategoryRoute());
                        },
                        child: widget.showButton?Text('Skip',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700)):Container(),
                      )),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text('Browse Through Our',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700)),
                  Text('List of Products & Categories',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 300.h,
                    // width: 500,
                    child: Image.asset(
                      'assets/images/Group_1127.png',
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                      'Find various products & services, from our comprehensive list',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 30.h,
                  ),
                ])));
  }
}
