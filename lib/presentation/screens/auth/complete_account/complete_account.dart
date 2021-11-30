import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class CompleteAccount extends StatelessWidget {
  const CompleteAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Image.asset(
              'assets/images/ajeo.png',
              height: 30.0,
            ),
          ),
          const SizedBox(
            height: 13.0,
          ),
          RichText(
            text: const TextSpan(
              text: 'Welcome',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontFamily: 'helves',
                fontWeight: FontWeight.w700,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' First Name!',
                  style: TextStyle(
                    color: Color.fromRGBO(242, 39, 35, 1),
                    fontSize: 25.0,
                    fontFamily: 'helves',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'Complete the details below to get started',
              style: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(107, 107, 107, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 35.0,
              left: sizeFit(true, 15.0, context),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: sizeFit(true, 176.0, context),
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        color: const Color.fromRGBO(249, 249, 249, 1),
                      ),
                      child: Row(
                        children: [
                       const   SizedBox(
                            width: 8.0,
                          ),
                          Image.asset(
                            'assets/images/calendar.png',
                            height: 24.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: sizeFit(true, 13.0, context),
                            ),
                            child: const Text(
                              'DD/MM/YYYY',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'helves',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                const    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: sizeFit(true, 131.0, context),
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        color:const  Color.fromRGBO(249, 249, 249, 1),
                      ),
                      child: Row(
                        children: [
                      const    SizedBox(
                            width: 8.0,
                          ),
                        const  FaIcon(
                            FontAwesomeIcons.transgender,
                            color: Color.fromRGBO(241, 96, 93, 1),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: sizeFit(true, 13.0, context),
                            ),
                            child: const Text(
                              'Gender',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'helves',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:const  EdgeInsets.only(
                    top: 21.0,
                  ),
                  child: Container(
                    width: sizeFit(true, 176.0, context),
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26.0),
                      color:const  Color.fromRGBO(249, 249, 249, 1),
                    ),
                    child: Row(
                      children: [
                      const   SizedBox(
                          width: 8.0,
                        ),
                       const  FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: Color.fromRGBO(241, 96, 93, 1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: sizeFit(true, 13.0, context),
                          ),
                          child: const Text(
                            'Market Location',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'helves',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 21.0,
                  ),
                  child: Container(
                    width: sizeFit(true, 254.0, context),
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26.0),
                      color: const Color.fromRGBO(249, 249, 249, 1),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8.0,
                        ),
                        const FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: Color.fromRGBO(241, 96, 93, 1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: sizeFit(true, 13.0, context),
                          ),
                          child: const Text(
                            'Phone Number',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'helves',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 30),
                  child: Center(
                    child: Text(
                      'Enter your billing information to access our premium features',
                      style: TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontSize: 14.0,
                        fontFamily: 'helves',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: sizeFit(true, 15.0, context),
                    bottom: 18.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: sizeFit(true, 161.0, context),
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color:const Color.fromRGBO(249, 249, 249, 1),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 8.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: sizeFit(true, 13.0, context),
                              ),
                              child: const Text(
                                'First Name',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'helves',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: sizeFit(true, 161.0, context),
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color: const Color.fromRGBO(249, 249, 249, 1),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 8.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: sizeFit(true, 13.0, context),
                              ),
                              child: const Text(
                                'Last Name',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'helves',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeFit(true, 343.0, context),
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.0),
                    color: const Color.fromRGBO(249, 249, 249, 1),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8.0,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.creditCard,
                        color: Color.fromRGBO(241, 96, 93, 1),
                        size: 20.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: sizeFit(true, 13.0, context),
                        ),
                        child: const Text(
                          'Card Number',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'helves',
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 18.0,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: sizeFit(true, 120.0, context),
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color:const Color.fromRGBO(249, 249, 249, 1),
                        ),
                        child: Row(
                          children: [
                         const   SizedBox(
                              width: 8.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: sizeFit(true, 13.0, context),
                              ),
                              child:const Text(
                                'Exp. mm/yy',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'helves',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: sizeFit(true, 16.0, context),
                      ),
                      Container(
                        width: sizeFit(true, 64.0, context),
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color:const Color.fromRGBO(249, 249, 249, 1),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: sizeFit(true, 13.0, context),
                              ),
                              child:const Text(
                                'CVV',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'helves',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.only(top: 18.0),
                  child: Container(
                    width: sizeFit(true, 343.0, context),
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26.0),
                      color:const Color.fromRGBO(249, 249, 249, 1),
                    ),
                    child: Row(
                      children: [
                     const   SizedBox(
                          width: 8.0,
                        ),
                     const   FaIcon(
                          FontAwesomeIcons.home,
                          color: Color.fromRGBO(241, 96, 93, 1),
                          size: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: sizeFit(true, 13.0, context),
                          ),
                          child: const Text(
                            'Address',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'helves',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 18.0,
                    right: sizeFit(true, 15.0, context),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: sizeFit(true, 120.0, context),
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color:const Color.fromRGBO(249, 249, 249, 1),
                        ),
                        child: Row(
                          children: [
                          const  SizedBox(
                              width: 8.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: sizeFit(true, 13.0, context),
                              ),
                              child:const Text(
                                'City',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'helves',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: sizeFit(true, 76.0, context),
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color:const Color.fromRGBO(249, 249, 249, 1),
                        ),
                        child: Row(
                          children: [
                        const    SizedBox(
                              width: 8.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: sizeFit(true, 13.0, context),
                              ),
                              child:const Text(
                                'State',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'helves',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: sizeFit(true, 104.0, context),
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          color:const Color.fromRGBO(249, 249, 249, 1),
                        ),
                        child: Row(
                          children: [
                        const    SizedBox(
                              width: 8.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: sizeFit(true, 13.0, context),
                              ),
                              child: const Text(
                                'Zip',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'helves',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              const  SizedBox(
                  height: 60.0,
                ),
                InkWell(
                  onTap: () {
                    // Get.to(T12SignUp_2());
                     AutoRouter.of(context).push(const T12SignUp_2());
                  },
                  child: Center(
                    child: Container(
                      height: sizeFit(false, 52, context),
                      width: sizeFit(true, 160, context),
                      decoration: BoxDecoration(
                          color: HexColor('#BEB6B6'),
                          borderRadius: BorderRadius.circular(26)),
                      child: Center(
                        child: Text(
                          'Complete Account',
                          style: TextStyle(
                            color: HexColor('#FFFFFF'),
                            fontSize: 14,
                            fontFamily: 'helves',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              const  SizedBox(
                  height: 44.0,
                ),
                GestureDetector(
                  onTap: () {
                    // Get.bottomSheet(ApplePay());
                  },
                  child: Center(
                    child: Text(
                      'You can also use Apple Pay',
                      style: TextStyle(
                        color: HexColor('#6B6B6B'),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
             const   SizedBox(
                  height: 54.0,
                ),
              ],
            ),
          ),
        ]))));
  }
}
