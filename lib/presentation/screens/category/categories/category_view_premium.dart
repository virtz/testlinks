import 'package:ajeo/presentation/screens/category/widgets/category_widget_premium.dart';
import 'package:ajeo/presentation/widgets/drawer1.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/colors.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoryViewPremium extends StatefulWidget {
  const CategoryViewPremium({Key? key}) : super(key: key);

  @override
  _CategoryViewPremiumState createState() => _CategoryViewPremiumState();
}

class _CategoryViewPremiumState extends State<CategoryViewPremium>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  TabController? tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 6, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    var authColor = const Color.fromRGBO(242, 39, 35, 1);
    return Scaffold(
        key: scaffoldKey,
        drawer: const MenuDrawer1(),
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:const EdgeInsets.only(
                left: 7.0,
                right: 7.0,
              ),
              child: Row(
                children: [
                  Padding(
                    padding:const EdgeInsets.only(
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
                        child:const Icon(
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
            Padding(
              padding:const EdgeInsets.only(
                left: 12.0,
                top: 40.0,
              ),
              child: Material(
                child: InkWell(
                  child: const Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'helves',
                      fontSize: 19.0,
                      color: Color.fromRGBO(107, 107, 107, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    // Get.offAll(HomeViewPremium()
                    AutoRouter.of(context).push(const HomeRoutePremium());
                  },
                ),
              ),
            ),
            TabBar(
              isScrollable: true,
              controller: tabController,
              indicatorColor: authColor,
              indicatorWeight: 3.0,
              labelColor: HexColor('#000000'),
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding:const EdgeInsets.only(
                top: 1.0,
                left: 15.0,
                right: 20.0,
              ),
              unselectedLabelColor: HexColor('#000000'),
              tabs:const [
                Tab(
                  child: Text(
                    'Food and Market',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'helves',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Cream',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'helves',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Category 3',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'helves',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Category 4',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'helves',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Category 5',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'helves',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Category 6',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'helves',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: sizeFit(false, 400, context),
                child: TabBarView(
                  controller: tabController,
                  children:const [
                    CategoryWidgetPremium(),
                    CategoryWidgetPremium(),
                    CategoryWidgetPremium(),
                    CategoryWidgetPremium(),
                    CategoryWidgetPremium(),
                    CategoryWidgetPremium(),
                  ],
                ),
              ),
            )
          ],
        ))));
  }
}
