// ignore_for_file: prefer_final_fields

import 'package:ajeo/presentation/screens/products/dropdown/products.dart';
import 'package:ajeo/presentation/screens/products/widgets/wish_list_button.dart';
import 'package:ajeo/presentation/widgets/drawer.dart';
import 'package:ajeo/presentation/widgets/line_chart_widget.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/utils/colors.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProductPagePremium2 extends StatefulWidget {
  const ProductPagePremium2({Key? key}) : super(key: key);

  @override
  _ProductPagePremium2State createState() => _ProductPagePremium2State();
}

class _ProductPagePremium2State extends State<ProductPagePremium2> {
  int _counter = 2;
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        key: scaffoldKey,
        drawer: const MenuDrawer(),
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        body: SafeArea(
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: InkWell(
                      onTap: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
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
                const  Expanded(child: SearchBar()),
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
                              children: [
                                InkWell(
                                  child: const Text(
                                    'Food and Market',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(242, 206, 207, 1.0),
                                        fontSize: 12.0,
                                        fontFamily: 'helves'),
                                  ),
                                  onTap: () {
                                    // Get.to(() => CategoryInFocusViewPremium());
                                  },
                                ),
                                InkWell(
                                  child: const Text(
                                    '/Diary and Milk',
                                    style: TextStyle(
                                        color: Color.fromRGBO(242, 39, 35, 1.0),
                                        fontSize: 12.0,
                                        fontFamily: 'helves'),
                                  ),
                                  onTap: () {
                                    // Get.to(() => SubCategoryViewPremium());
                                  },
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
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 73.0,
                              width: 140.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0)),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'N200',
                                      style: TextStyle(
                                        color: Color.fromRGBO(8, 248, 36, 1.0),
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
                                  borderRadius: BorderRadius.circular(16.0)),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'N300',
                                      style: TextStyle(
                                        color: Color.fromRGBO(248, 8, 8, 1.0),
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
                                  'assets/images/egg3.png',
                                  width: 128,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 70, top: 22),
                                  child: Image.asset(
                                    'assets/images/egg2.png',
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
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'N250',
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
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          height: 50.0,
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
                        children: [
                          InkWell(
                            child: const Text(
                              '-',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'helves'),
                            ),
                            onTap: () {
                              setState(() {
                                _counter--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '$_counter Dozen',
                            style: const TextStyle(
                                color: Color.fromRGBO(242, 39, 35, 1.0),
                                fontSize: 16,
                                fontFamily: 'helves'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: const Text(
                              '+',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'helves'),
                            ),
                            onTap: () {
                              setState(() {
                                _counter++;
                              });
                            },
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
                      const Center(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Milk',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(49, 49, 51, 1.0),
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'helves'),
                                    ),
                                    Text(
                                      'N200',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(8, 248, 36, 1.0),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Milk',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(49, 49, 51, 1.0),
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'helves'),
                                    ),
                                    Text(
                                      'N200',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(8, 248, 36, 1.0),
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
                      const Center(
                        child: Text(
                          '2 Dozen',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
//graph
                      SizedBox(
                        height: 180.0,
                        width: size.width * 0.88,
                        child: LineChartWidget(
                          priceCoordinates:const [
                            FlSpot(-1, 3),
                            FlSpot(1, 2),
                            FlSpot(3, 5),
                            FlSpot(5, 2.5),
                            FlSpot(7, 6),
                            FlSpot(9, 7),
                            FlSpot(11, 4),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: InkWell(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Bodija Market',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                  Text(
                                    'N200',
                                    style: TextStyle(
                                        color: Color.fromRGBO(8, 248, 36, 1.0),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                ],
                              ),
                              onTap: () {
                                // Get.to(() => Stores());
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Aleshinloye',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                                Text(
                                  'N215',
                                  style: TextStyle(
                                      color: Color.fromRGBO(110, 192, 100, 1.0),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                              ],
                            ),
                          ),
                      const    SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:const [
                                Text(
                                  'Mokola Market',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                                Text(
                                  'N225',
                                  style: TextStyle(
                                      color: Color.fromRGBO(148, 206, 141, 1.0),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                              ],
                            ),
                          ),
                    const      SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:const [
                                Text(
                                  'Leventis',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                                Text(
                                  'N245',
                                  style: TextStyle(
                                      color: Color.fromRGBO(245, 91, 88, 1.0),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                              ],
                            ),
                          ),
                     const     SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:const [
                                Text(
                                  'Ring Road',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                                Text(
                                  'N295',
                                  style: TextStyle(
                                      color: Color.fromRGBO(245, 91, 88, 1.0),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                              ],
                            ),
                          ),
                     const     SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:const [
                                Text(
                                  'Jericho Market',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                                Text(
                                  'N300',
                                  style: TextStyle(
                                      color: Color.fromRGBO(8, 248, 36, 1.0),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'helves'),
                                ),
                              ],
                            ),
                          ),
                      const    SizedBox(
                            height: 90,
                          ),
                        ],
                      ),
                      Column(
                        children:  [
                    const      Text(
                            'Prices last updated 07/20/2020 ',
                            style: TextStyle(
                                color: Color.fromRGBO(49, 49, 51, 1.0),
                                fontSize: 18.0,
                                fontFamily: 'helves'),
                          ),
                  const        SizedBox(
                            height: 10.0,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:const [
                                Text(
                                  '52 Week High',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  ' N315 ',
                                  style: TextStyle(
                                    color: Color.fromRGBO(245, 91, 88, 1.0),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '| Low',
                                  style: TextStyle(
                                    color: Color.fromRGBO(49, 49, 51, 1.0),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  ' N185',
                                  style: TextStyle(
                                    color: Color.fromRGBO(49, 49, 51, 1.0),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      const    SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Text(
                                'Volatility ',
                                style: TextStyle(
                                  color: Color.fromRGBO(12, 12, 12, 1.0),
                                  fontSize: 18.0,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '9.8%',
                                style: TextStyle(
                                  color: Color.fromRGBO(49, 49, 51, 1.0),
                                  fontSize: 18.0,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const Text(
                        'Have feedback for us?',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1.0),
                          fontSize: 17.0,
                          fontFamily: 'helves',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      InkWell(
                        child: Container(
                          height: 54,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: const Color.fromRGBO(242, 39, 35, 1.0)),
                          child: const Center(
                            child: Text(
                              'Feedback',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                fontSize: 17.0,
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          // Get.to(() => MyFeedback());
                        },
                      ),

                      const SizedBox(
                        height: 40.0,
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
        )));
  }
}
