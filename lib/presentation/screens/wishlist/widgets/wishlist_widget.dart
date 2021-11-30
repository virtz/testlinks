import 'package:ajeo/presentation/widgets/pop-ups/new_list.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class WishListWidget extends StatelessWidget {
  const WishListWidget({Key? key, this.indicatorColor, this.labelColor}) : super(key: key);

  final Color? indicatorColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
             Padding(
          padding: EdgeInsets.only(
            left: sizeFit(true, 15.0, context),
            top: 14.0,
            right: sizeFit(true, 18.0, context),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.dialog(
                  const   NewList(),
                  );
                },
                child: Row(
                  children: [
                    ClipOval(
                      child: Material(
                        color: indicatorColor,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration:const  BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: sizeFit(true, 10.0, context),
                    ),
                    Text(
                      'Create New List',
                      style: TextStyle(
                        color: labelColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              FaIcon(
                FontAwesomeIcons.slidersH,
                color: indicatorColor,
                size: 18.0,
              ),
            ],
          ),
        ),

            Container(
          margin:const EdgeInsets.only(top: 12.0),
          height: MediaQuery.of(context).size.height * 0.55,
          child: ListView.builder(
            physics:const BouncingScrollPhysics(),
            itemCount: 6,
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 20.0),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: sizeFit(true, 12.0, context),
                              right: sizeFit(true, 10.0, context),
                            ),
                            child: Container(
                              height: 65.0,
                              width: sizeFit(true, 65.0, context),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Center(
                                child: Image.asset('assets/images/egg2.png',
                                    height: 28),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Eggs',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'helves',
                                    color: labelColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '2 Dozen / Free Range Eggs',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'helves',
                                    color: labelColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                RichText(
                                  text:const  TextSpan(
                                    text: 'N200',
                                    style: TextStyle(
                                      color: Color.fromRGBO(8, 237, 34, 1),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves',
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' / ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'helves',
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'N320',
                                        style: TextStyle(
                                          color: Color.fromRGBO(237, 8, 8, 1),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'helves',
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' / ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'helves',
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'N280',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'helves',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: sizeFit(true, 23.0, context),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            FontAwesomeIcons.timesCircle,
                            color: Color.fromRGBO(241, 52, 50, 1),
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  index != 5
                      ?const SizedBox(
                          height: 30.0,
                        )
                      : Container(),
                ],
              );
            },
          ),
        ),
       Padding(
          padding: EdgeInsets.only(
            top: 10.0,
            left: sizeFit(true, 13.0, context),
            right: sizeFit(true, 20.0, context),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 26.0,
                  color: labelColor,
                  fontFamily: 'helves',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lowest',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: labelColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: sizeFit(false, 12.0, context),
                        ),
                     const   Text(
                          'N650',
                          style: TextStyle(
                            fontSize: 26.0,
                            color: Color.fromRGBO(9, 237, 35, 1),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '/',
                      style: TextStyle(
                        fontSize: 26.0,
                        color: labelColor,
                        fontFamily: 'helves',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Highest',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: labelColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: sizeFit(false, 12.0, context),
                        ),
                     const   Text(
                          'N970',
                          style: TextStyle(
                            fontSize: 26.0,
                            color: Color.fromRGBO(238, 31, 31, 1),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '/',
                      style: TextStyle(
                        fontSize: 26.0,
                        color: labelColor,
                        fontFamily: 'helves',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Average',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: labelColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: sizeFit(false, 12.0, context),
                        ),
                        Text(
                          '840',
                          style: TextStyle(
                            fontSize: 26.0,
                            color: labelColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),


      ],
    );
  }
}
