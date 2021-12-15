// ignore_for_file: avoid_unnecessary_containers

import 'package:ajeo/presentation/screens/products/dropdown/products.dart';
import 'package:ajeo/presentation/screens/products/widgets/wish_list_button.dart';
import 'package:ajeo/presentation/widgets/drawer.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/utils/colors.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';

class ProductPage2 extends StatefulWidget {
  const ProductPage2({Key? key}) : super(key: key);

  @override
  _ProductPage2State createState() => _ProductPage2State();
}

class _ProductPage2State extends State<ProductPage2> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const MenuDrawer(),
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1.0),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 7.0,
                    right: 7.0,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: Container(
                            height: 34.0,
                            width: 34.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.perm_identity,
                              color: kHomePageIconColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: sizeFit(true, 10.0, context),
                      ),
                      const Expanded(child: SearchBar()),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Eggs',
                                  style: TextStyle(
                                    color: Color.fromRGBO(49, 49, 51, 1.0),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25.0,
                                    fontFamily: 'helves',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Food and Market',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              242, 206, 207, 1.0),
                                          fontSize: 12.0,
                                          fontFamily: 'helves'),
                                    ),
                                    Text(
                                      '/Diary and Milk',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(242, 39, 35, 1.0),
                                          fontSize: 12.0,
                                          fontFamily: 'helves'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 73.0,
                                  width: 140.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'N220',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(8, 248, 36, 1.0),
                                            fontSize: 34,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'helves',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Bodija Market',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'helves',
                                            // fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 73.0,
                                  width: 140.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'N320',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(248, 8, 8, 1.0),
                                            fontSize: 34,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'helves',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Jericho',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'helves',

                                            // fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 34.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/eggWhiteT.png',
                                      width: 128,
                                      height: 100,
                                      fit: BoxFit.fill,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 70, top: 40),
                                      child: Image.asset(
                                        'assets/images/eggWhiteO.png',
                                        width: 128,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                                const WishListButton(),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        'N280',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 32.0,
                                            fontFamily: 'helves',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Average Price',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontFamily: 'helves',
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.import_export,
                                    color: Color.fromRGBO(241, 48, 46, 1.0),
                                    size: 32,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Container(
                              height: 41.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    ProductDrop(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'helves'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '2 Dozen',
                                style: TextStyle(
                                    color: Color.fromRGBO(242, 39, 35, 1.0),
                                    fontSize: 16,
                                    fontFamily: 'helves'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'helves'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Center(
                            child: Text(
                              'Price History',
                              style: TextStyle(
                                  color: Color.fromRGBO(9, 205, 230, 1.0),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        const  Center(
                            child: Text(
                              'Related Products',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 143,
                                  width: 139,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Milk',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  49, 49, 51, 1.0),
                                              fontSize: 32.0,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'helves'),
                                        ),
                                        Text(
                                          'N200',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  8, 248, 36, 1.0),
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'helves'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 143,
                                  width: 139,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Milk',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  49, 49, 51, 1.0),
                                              fontSize: 32.0,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'helves'),
                                        ),
                                        Text(
                                          'N200',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  8, 248, 36, 1.0),
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'helves'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Center(
                            child: Text(
                              'Price History',
                              style: TextStyle(
                                  color: Color.fromRGBO(9, 205, 230, 1.0),
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Sign up for a Premium account',
                                style: TextStyle(
                                    color: Color.fromRGBO(242, 39, 35, 1.0),
                                    fontSize: 17,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'By upgrading to a premium, you can view details',
                                style: TextStyle(
                                    color: Color.fromRGBO(194, 182, 182, 1.0),
                                    fontSize: 12,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Price History',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontSize: 14,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Price Analysis',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontSize: 14,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Specific Store and Location',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontSize: 14,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 14.0,
                          ),
                          Center(
                            child: Container(
                              height: 54,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  color:
                                      const Color.fromRGBO(242, 39, 35, 1.0)),
                              child: const Center(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1.0),
                                    fontSize: 17.0,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 60.0,
                          ),
                          SizedBox(
                            height: 39,
                            width: 35,
                            child: Image.asset(
                              'assets/images/ajeo.png',
                              width: 100,
                              height: 40,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
