import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(242, 12, 3, 0.6),
                      Color.fromRGBO(247, 6, 6, 0.18),
                    ],
                  ),
                ),
                child: SizedBox(
                    height: size.height,
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          "You're all set!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 44.0,
                      ),
                      Image.asset(
                        'assets/images/ajeo.png',
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        'You’re now a Premium User!',
                        style: TextStyle(
                          color: Color.fromRGBO(111, 111, 111, 1),
                          fontSize: 18.0,
                          fontFamily: 'helves',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'You can now access:',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              'Deeper Price Analytics ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              'Exact Prices for Products ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              'Exact Stores and Locations with guaranteed pricing ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              'Pricing History ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              'and More!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: InkWell(
                                onTap: () {
                                  // Get.to(
                                  //     /* () => ProductPagePremium2(),*/
                                  //     () => HomeViewPremium());
                                },
                                child: Material(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21.0),
                                  ),
                                  color: const Color.fromRGBO(240, 90, 36, 1),
                                  child: InkWell(
                                    onTap: () {
                                      // Get.to(
                                      //   () =>
                                      //       /*ProductPagePremium2()*/
                                      //       HomeViewPremium(),
                                      //   binding: HomeBinding(),
                                      // );
                                    },
                                    borderRadius: BorderRadius.circular(21.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 145.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(21.0),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Continue',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontFamily: 'helves',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])))));
  }
}
