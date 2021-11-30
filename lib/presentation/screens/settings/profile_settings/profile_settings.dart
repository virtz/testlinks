// ignore_for_file: avoid_print

import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FAFAFA'),
      body: SafeArea(
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
                        Text('Profile Settings',
                            style: TextStyle(
                              color: HexColor('#F22723'),
                              fontSize: 20,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w700,
                            )),
                   const     SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 230,
                          child: Text(
                            'Edit your personal information, change location or change password',
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
             const       SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: sizeFit(false, 100, context),
                      width: sizeFit(true, 100, context),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 1.0, color: HexColor('#F22723')),
                      ),
                      child: IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon:const FaIcon(FontAwesomeIcons.images),
                          color: HexColor('#F22723'),
                          iconSize: 25,
                          onPressed: () {
                            // print("Pressed");
                          }),
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
                            Text('Name',
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
                                      width: 1.0, color: HexColor('#F22723')),
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
                  const      SizedBox(
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
                            Text('Email',
                                style: TextStyle(
                                  color: HexColor('#000000'),
                                  fontSize: 18,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w600,
                                )),
                            Align(
                              alignment: const Alignment(0.0, 0.9),
                              child: Container(
                                width: sizeFit(true, 16, context),
                                height: sizeFit(false, 16, context),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor('#FFFFFF'),
                                  border: Border.all(
                                      width: 1.0, color: HexColor('#F22723')),
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
                       const SizedBox(
                          height: 5,
                        ),
                        Text('Iyabashira@gmail.com',
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
                            Text('Phone Number',
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
                                      width: 1.0, color: HexColor('#F22723')),
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
                  const      SizedBox(
                          height: 5,
                        ),
                        Text('+1 555-123-4567',
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
                            Text('Location',
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
                                      width: 1.0, color: HexColor('#F22723')),
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
                        Text('Lagos, Nigeria',
                            style: TextStyle(
                              color: HexColor('#707070'),
                              fontSize: 12,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                 const   SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      child: Text(
                        'Change Password',
                        style: TextStyle(
                            color: HexColor('#F1302E'),
                            fontSize: 11,
                            fontFamily: 'helves',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
         const     SizedBox(
                height: 30,
              ),
              Center(
                child: TextButton(
                    child: const Text("Save",
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(HexColor('#F1302E')),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () => print('pressed')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
