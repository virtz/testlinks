// ignore_for_file: unused_field

import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ApplePay extends StatefulWidget {
  const ApplePay({Key? key}) : super(key: key);

  @override
  _ApplePayState createState() => _ApplePayState();
}

class _ApplePayState extends State<ApplePay> {
  static const IconData fingerprint =
      IconData(0xe287, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              /*SizedBox(
                height: 260,
              ),*/
              Container(
                height: sizeFit(false, 370, context),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 0),
                            child: Image.asset(
                              'assets/images/applepay.png',
                              height: 25,
                              width: 50,
                              fit: BoxFit.contain,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Get.back();
                              AutoRouter.of(context).pop();
                            },
                            child: const Text(
                              'Cancel',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Color.fromRGBO(56, 122, 254, 1),
                                fontSize: 12,
                                fontFamily: 'helves',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 1,
                      indent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: sizeFit(true, 120, context),
                          ),
                          const Text(
                            'MEMBERSHIP \nAJE-O: PRICE MATCHING PLATFORM',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 1,
                      indent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: sizeFit(true, 120, context),
                            child: const Text(
                              'POLICY',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'helves',
                                  color: Color.fromRGBO(149, 152, 154, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Cancel anything in settings > Apple ID at\nleast a day before each renewal date',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Plan automatically renews until\ncancelled',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 1,
                      indent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: sizeFit(true, 120, context),
                            child: const Text(
                              'ACCOUNT',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'helves',
                                  color: Color.fromRGBO(149, 152, 154, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'LUPITA@ICLOUD.COM',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 1,
                      indent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: sizeFit(true, 120, context),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: const [
                              Text(
                                'PRICE',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'helves',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Text(
                                '\$1.00/MONTH',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 1,
                      indent: 10,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Get.to(T12SignUp_2());
                            AutoRouter.of(context).push(const T12SignUp_2());
                          },
                          child: const Icon(
                            Icons.fingerprint,
                            color: Color.fromRGBO(255, 88, 119, 1),
                            size: 35,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Confirm with Touch ID',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: 'helves'),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
