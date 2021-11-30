

// ignore_for_file: prefer_final_fields, unused_field, must_be_immutable

import 'package:ajeo/presentation/widgets/cancel_button.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Review extends StatelessWidget {
    String _singleValue = 'Yes';
   Review({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#998FA2'),
      body:SafeArea(
        child:Center(
          child:Container(
                width: sizeFit(true, 340, context),
            height: sizeFit(false, 582, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
                    child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // InkWell(
                  //   child: Align(
                  //     alignment: Alignment(0.9, 0.0),
                  //     child: Container(
                  //       width: sizeFit(true, 14, context),
                  //       height: sizeFit(false, 14, context),
                  //       decoration: BoxDecoration(
                  //         shape: BoxShape.circle,
                  //         color: HexColor('#FFFFFF'),
                  //         border: Border.all(
                  //             width: 1.0, color: HexColor('#F22723')),
                  //       ),
                  //       child: Icon(
                  //         Icons.close,
                  //         size: 8.0,
                  //         color: HexColor('#F1302E'),
                  //       ),
                  //     ),
                  //   ),
                  // ),Can
               const   CancelButton(),
               const   SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Leave us a Review!',
                          style: TextStyle(
                            color: HexColor('#F22723'),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'helves',
                          ),
                        ),
                  const      SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 220,
                          child: Text(
                            'We hope your Aje-O experience has been great so far!',
                            style: TextStyle(
                                color: HexColor('#787878'), fontSize: 13),
                          ),
                        ),
                     const   SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: SizedBox(
                            width: sizeFit(true, 70, context),
                            height: sizeFit(false, 70, context),
                            child: Image.asset(
                              'assets/images/ajeo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            'Let us know how we are doing?',
                            style: TextStyle(
                              color: HexColor('#313133'),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'helves',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.solidStar,
                                  color: HexColor('#F22723'),
                                  size: 30,
                                ),
                                onPressed: () {
                                  // print("Pressed");
                                }),
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.solidStar,
                                  color: HexColor('#F22723'),
                                  size: 30,
                                ),
                                onPressed: () {
                                  // print("Pressed");
                                }),
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.solidStar,
                                  color: HexColor('#F22723'),
                                  size: 30,
                                ),
                                onPressed: () {
                                  // print("Pressed");
                                }),
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.solidStar,
                                  color: HexColor('#B0B0B0'),
                                  size: 30,
                                ),
                                onPressed: () {
                                  // print("Pressed");
                                }),
                            IconButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.solidStar,
                                  color: HexColor('#B0B0B0'),
                                  size: 30,
                                ),
                                onPressed: () {
                                  // print("Pressed");
                                }),
                          ],
                        ),
                 const       SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Container(
                            width: sizeFit(true, 120, context),
                            height: sizeFit(false, 50, context),
                            decoration: BoxDecoration(
                                color: HexColor('#BEB6B6'),
                                borderRadius: BorderRadius.circular(26)),
                            child:const  Center(
                              child: Text(
                                'Submit',
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'helves',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                   const     SizedBox(
                          height: 25,
                        ),
                        Row(
                          children:const [
                            Expanded(
                              child: Divider(
                                color: Color.fromRGBO(242, 39, 35, 1),
                                thickness: 2,
                                indent: 20,
                                endIndent: 20,
                              ),
                            ),
                            Text(
                              '  OR  ',
                              style: TextStyle(
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(242, 39, 35, 1),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color.fromRGBO(242, 39, 35, 1),
                                thickness: 2,
                                indent: 20,
                                endIndent: 20,
                              ),
                            ),
                          ],
                        ),
                    const    SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 260,
                          child: Text(
                            'Create an account now and gain full access to all of our convenient features!',
                            style: TextStyle(
                                color: HexColor('#787878'), fontSize: 13),
                          ),
                        ),
                      const  SizedBox(
                          height: 35,
                        ),
                        Center(
                          child: Container(
                            width: sizeFit(true, 150, context),
                            height: sizeFit(false, 50, context),
                            decoration: BoxDecoration(
                                color: HexColor('#F1302E'),
                                borderRadius: BorderRadius.circular(26)),
                            child:const Center(
                              child: Text(
                                'Sign Up',
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'helves',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        )
      )
    );
  }
}