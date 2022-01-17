// ignore_for_file: deprecated_member_use

import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FourthWalkthrough extends StatefulWidget {
  final PageController? controller;
   final bool showButton;

  const FourthWalkthrough({Key? key, this.controller, this.showButton= true}) : super(key: key);

  @override
  _FourthWalkthroughState createState() => _FourthWalkthroughState();
}

class _FourthWalkthroughState extends State<FourthWalkthrough> {
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
                    height: 60.h,
                  ),
                  // Align(
                  //     alignment: Alignment.topRight,
                  //     child: GestureDetector(
                  //       onTap: () {
                  //         AutoRouter.of(context).replace(HomeNonPremium());
                  //       },
                  //       child: Text('Skip',
                  //           style: TextStyle(
                  //               color: Theme.of(context).primaryColor,
                  //               fontSize: 17.sp,
                  //               fontWeight: FontWeight.w700)),
                  //     )),

                  Text('Find Comprehensive Pricing',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700)),
                  Text('Information On Essential Products',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                      height: 300.h,
                      child: Image.asset('assets/images/Group_1124.png')),
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
                  SizedBox(
                    width: size.width * 0.6,
                    height: 50.h,
                    child:widget.showButton? MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Theme.of(context).accentColor,
                      child: Text("Continue to Homepage",
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.w)),
                      onPressed: () {
                        AutoRouter.of(context).push( const SpecialCategoryRoute());
                      },
                    ):Container(),
                  )
                ])));
  }
}
