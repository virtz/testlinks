// ignore_for_file: prefer_final_fields, unused_field

import 'package:ajeo/presentation/widgets/cancel_button.dart';
import 'package:ajeo/presentation/widgets/pop-ups/check_box.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  String _singleValue = 'Yes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#998FA2').withOpacity(0.3),
        body: SafeArea(
            child: Center(
          child: Container(
              width: sizeFit(true, 310, context),
              height: sizeFit(false, 430, context),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CancelButton(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Add to Wishlist',
                                style: TextStyle(
                                  color: HexColor('#F22723'),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  fontFamily: 'Helves',
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: sizeFit(true, 18, context),
                                    height: sizeFit(false, 18, context),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor('#F22723'),
                                    ),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.add,
                                        size: 14.0,
                                        color: HexColor('#FFFFFF'),
                                      ),
                                      onTap: () {
                                        // Get.to(() => NewList());
                                        AutoRouter.of(context)
                                            .push(const NewList());
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Create New List',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'helves',
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: sizeFit(true, 190, context),
                                    child: Text(
                                      'Iya Bashira',
                                      style: TextStyle(
                                        color: HexColor('#6B6B6B'),
                                        fontFamily: 'helves',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const MyCheckBox(),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: sizeFit(true, 190, context),
                                    child: Text(
                                      'Old Street Store',
                                      style: TextStyle(
                                        color: HexColor('#6B6B6B'),
                                        fontFamily: 'helves',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const MyCheckBox(),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: sizeFit(true, 190, context),
                                    child: Text(
                                      'Shoprite',
                                      style: TextStyle(
                                        color: HexColor('#6B6B6B'),
                                        fontFamily: 'helves',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const MyCheckBox(),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: sizeFit(true, 190, context),
                                    child: Text(
                                      'Alhajas Shop',
                                      style: TextStyle(
                                        color: HexColor('#6B6B6B'),
                                        fontFamily: 'helves',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const MyCheckBox(),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          onTap: () {
                            // Get.back();
                            AutoRouter.of(context).pop();
                          },
                          child: Center(
                            child: Container(
                              width: sizeFit(true, 150, context),
                              height: sizeFit(false, 40, context),
                              decoration: BoxDecoration(
                                  color: HexColor('#F1302E'),
                                  borderRadius: BorderRadius.circular(26)),
                              child: const Center(
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'helves',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                ),
              )),
        )));
  }
}
