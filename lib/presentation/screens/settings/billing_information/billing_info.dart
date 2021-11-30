// ignore_for_file: avoid_print

import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BillingInformation extends StatelessWidget {
  const BillingInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FAFAFA'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: InkWell(
                      child: Container(
                        width: sizeFit(true, 34, context),
                        height: sizeFit(false, 34, context),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: HexColor('#F22723'),
                          size: 26,
                        ),
                      ),
                      onTap: () {
                        // Get.back();
                        AutoRouter.of(context).pop();
                      },
                    ),
                  ),
                ),
              const  SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Billing Information',
                              style: TextStyle(
                                color: HexColor('#F22723'),
                                fontSize: 20,
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w700,
                              )),
                      const    SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 230,
                            child: Text(
                              'Edit your Billing information to handle transactions',
                              style: TextStyle(
                                color: HexColor('#6B6B6B'),
                                fontSize: 12,
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                const      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                            /*height: sizeFit(false, 150, context),*/
                            width: sizeFit(true, 260, context),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(colors: [
                                  HexColor('#F1387A'),
                                  HexColor('#D5133E')
                                ])),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 15),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('VISA',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: HexColor('#FBCEDE'),
                                          fontSize: 15,
                                          fontFamily: 'helves',
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ),
                     const             SizedBox(
                                    height: 55,
                                  ),
                                  Text('XXXX XXXX XXXX 1234',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: HexColor('#FBCEDE'),
                                        fontSize: 18,
                                        fontFamily: 'helves',
                                        fontWeight: FontWeight.w600,
                                      )),
                    const              SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Kehinde Adelande',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            color: HexColor('#FBCEDE'),
                                            fontSize: 8,
                                            fontFamily: 'helves',
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Row(
                                        children: [
                                          Text('Thur',
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                color: HexColor('#954657'),
                                                fontSize: 8,
                                                fontFamily: 'helves',
                                                fontWeight: FontWeight.w600,
                                              )),
                            const              SizedBox(
                                            width: 5,
                                          ),
                                          Text('02/24',
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                color: HexColor('#FBCEDE'),
                                                fontSize: 12,
                                                fontFamily: 'helves',
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ),
                   const   SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Name on card',
                                  style: TextStyle(
                                    color: HexColor('#000000'),
                                    fontSize: 18,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600,
                                  )),
                              Align(
                                alignment:const Alignment(0.0, 0.9),
                                child: Container(
                                  width: sizeFit(true, 16, context),
                                  height: sizeFit(false, 16, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: HexColor('#FFFFFF'),
                                    border: Border.all(
                                        width: 1.0,
                                        color: HexColor('#F22723')),
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    size: 10.0,
                                    color: HexColor('#F1302E'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                     const     SizedBox(
                            height: 5,
                          ),
                          Text('Kehinde Adelande',
                              style: TextStyle(
                                color: HexColor('#707070'),
                                fontSize: 12,
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                   const   SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Card Number',
                                  style: TextStyle(
                                    color: HexColor('#000000'),
                                    fontSize: 18,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600,
                                  )),
                              Align(
                                alignment:const Alignment(0.0, 0.9),
                                child: Container(
                                  width: sizeFit(true, 16, context),
                                  height: sizeFit(false, 16, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: HexColor('#FFFFFF'),
                                    border: Border.all(
                                        width: 1.0,
                                        color: HexColor('#F22723')),
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    size: 10.0,
                                    color: HexColor('#F1302E'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                     const     SizedBox(
                            height: 5,
                          ),
                          Text('XXXX XXXX XXXX 1234',
                              style: TextStyle(
                                color: HexColor('#707070'),
                                fontSize: 12,
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                  const    SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Expiration',
                                  style: TextStyle(
                                    color: HexColor('#000000'),
                                    fontSize: 18,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600,
                                  )),
                              Align(
                                alignment:const Alignment(0.0, 0.9),
                                child: Container(
                                  width: sizeFit(true, 16, context),
                                  height: sizeFit(false, 16, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: HexColor('#FFFFFF'),
                                    border: Border.all(
                                        width: 1.0,
                                        color: HexColor('#F22723')),
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    size: 10.0,
                                    color: HexColor('#F1302E'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                     const     SizedBox(
                            height: 5,
                          ),
                          Text('02/24',
                              style: TextStyle(
                                color: HexColor('#707070'),
                                fontSize: 12,
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                 const     SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Security Code',
                                  style: TextStyle(
                                    color: HexColor('#000000'),
                                    fontSize: 18,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600,
                                  )),
                              Align(
                                alignment:const Alignment(0.0, 0.9),
                                child: Container(
                                  width: sizeFit(true, 16, context),
                                  height: sizeFit(false, 16, context),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: HexColor('#FFFFFF'),
                                    border: Border.all(
                                        width: 1.0,
                                        color: HexColor('#F22723')),
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    size: 10.0,
                                    color: HexColor('#F1302E'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                       const   SizedBox(
                            height: 5,
                          ),
                          Text('019',
                              style: TextStyle(
                                color: HexColor('#707070'),
                                fontSize: 12,
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                  const    SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
             const   SizedBox(
                  height: 30,
                ),
                Center(
                  child: TextButton(
                      child:const Text("Save",
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor('#F1302E')),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      onPressed: () => print('pressed')),
                ),

                // FlatButton(
                //
                //     color: HexColor('#F1302E'),
                //     onPressed: () {
                //       print('pressed');
                //     },
                //     child: Text(
                //       'Save',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 12,
                //         fontFamily: 'helves',
                //       ),
                //     ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
