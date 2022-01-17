// ignore_for_file: deprecated_member_use

import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdWalkthrough extends StatefulWidget {
  final PageController? controller;
  final bool showButton;
  const ThirdWalkthrough({Key? key, this.controller,this.showButton = true}) : super(key: key);

  @override
  _ThirdWalkthroughState createState() => _ThirdWalkthroughState();
}

class _ThirdWalkthroughState extends State<ThirdWalkthrough> {
  @override
  Widget build(BuildContext context) {
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
                        child:widget.showButton? Text('Skip',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w700)):Container(),
                      )),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text('Pick From A Number Of',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700)),
                  Text('Products To Find Their Price Range',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                      height: 300.h,
                      child: Image.asset('assets/images/Group_1125.png')),
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
