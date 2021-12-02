import 'package:ajeo/presentation/widgets/drawer1.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/utils/colors.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePagePremium extends StatefulWidget {
  const HomePagePremium({Key? key}) : super(key: key);

  @override
  _HomePagePremiumState createState() => _HomePagePremiumState();
}

class _HomePagePremiumState extends State<HomePagePremium> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        key: scaffoldKey,
        drawer: const MenuDrawer1(),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            Padding(
              padding: EdgeInsets.only(
                top: sizeFit(false, 30.0, context),
                left: sizeFit(true, 10.0, context),
              ),
              child: InkWell(
                onTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: const Icon(
                  Icons.perm_identity,
                  color: kHomePageIconColor,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: sizeFit(false, 24.0, context),
              ),
              child: Container(
                height: sizeFit(false, 100.0, context),
                width: sizeFit(true, 375, context),
                color: const Color.fromRGBO(254, 144, 168, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: sizeFit(true, 30.0, context),
                    right: sizeFit(true, 44.0, context),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending \nItem \nPreview/AD'.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 19.0,
                          fontFamily: 'helves',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SvgPicture.asset('assets/images/downtrend.svg'),
                    ],
                  ),
                ),
              ),
            ),
 SizedBox(
                height: sizeFit(false, 44.0, context),
              ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          var argument = {
                            'initialIndex': index,
                          };
                          // Get.to(
                          //   () => CategoryInFocusViewPremium(),
                          //   arguments: argument,
                          // );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: sizeFit(true, 8.0, context),
                          ),
                          child: const Text(
                            'Food & Market',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(47, 47, 52, 1),
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: sizeFit(false, 120.0, context),
                        child: ListView.builder(
                          padding: EdgeInsets.only(bottom: 24.0),
                          itemBuilder: (context, int) {
                            return Padding(
                              padding: EdgeInsets.only(
                                top: sizeFit(false, 10.0, context),
                                left: sizeFit(false, 20.0, context),
                              ),
                              child: Center(
                                child: Container(
                                  height: sizeFit(false, 97.0, context),
                                  width: sizeFit(true, 90.0, context),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:const  EdgeInsets.only(
                                          top: 7.0,
                                          left: 7.0,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            // Get.to(
                                            //     () => SubCategoryViewPremium());
                                          },
                                          child: const Text(
                                            'Dairy',
                                            style: TextStyle(
                                              fontFamily: 'helves',
                                              color:
                                                  Color.fromRGBO(47, 47, 52, 1),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    const  SizedBox(
                                        height: 20.0,
                                      ),
                                      InkWell(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/images/egg.png',
                                          ),
                                        ),
                                        onTap: () {
                                          // Get.to(() => ProductPagePremium2());
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          physics:const ScrollPhysics(),
                        ),
                      ),
                    ],
                  );
                },
              ),
          ],
        ))));
  }
}
