// ignore_for_file: missing_required_param

import 'package:ajeo/presentation/screens/auth/local_widgets/textfield.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(153, 143, 162, 1),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.only(
              left: sizeFit(true, 9.0, context),
              top: 9.0,
            ),
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 318.0.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        child: TextFieldContainer(
              
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.0.w,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).pop();
                    },
                    child: const Icon(
                      FontAwesomeIcons.timesCircle,
                      color: Color.fromRGBO(241, 52, 50, 1),
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 20.0.w,
                  top: 10.w,
                  right:  20.0.w,
                ),
                child: Container(
                  height: 73.0.h,
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  width:  310.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 12.0.w,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left:  16.0.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width:  110.0.w,
                                child:  Text(
                                  'Eggs',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(49, 49, 51, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0.sp,
                                  ),
                                ),
                              ),
                               Text(
                                '2 Dozen / Free Range Eggs',
                                style:  TextStyle(
                                  color: const Color.fromRGBO(49, 49, 51, 1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                         SizedBox(
                          height: 10.0.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 40.0.w,
                              ),
                              child: Image.asset(
                                'assets/images/egg3.png',
                                height: 25.0.h,
                              ),
                            ),
                            RichText(
                              text:  TextSpan(
                                text: 'N200',
                                style: TextStyle(
                                  color:const  Color.fromRGBO(8, 237, 34, 1),
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'helves',
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' / ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves',
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'N320',
                                    style: TextStyle(
                                      color:const Color.fromRGBO(237, 8, 8, 1),
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves',
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' / ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves',
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'N280',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ]));
  }
}
