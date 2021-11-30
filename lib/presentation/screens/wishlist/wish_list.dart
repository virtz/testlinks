import 'package:ajeo/presentation/widgets/drawer1.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/utils/colors.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';

class WishListView extends StatefulWidget {
  const WishListView({Key? key}) : super(key: key);

  @override
  _WishListViewState createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView>  with SingleTickerProviderStateMixin  {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  final labelColor = const Color.fromRGBO(47, 47, 52, 1);
  final indicatorColor = const Color.fromRGBO(242, 39, 35, 1);

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      vsync: this,
      length: 4,
      // initialIndex: Get.arguments['initialIndex'] ?? 0,
    );
    tabController!.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const MenuDrawer1(),
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 7.0,
              right: 7.0,
              bottom: 20.0,
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
                const Expanded(
                  child: SearchBar(),
                ),
              ],
            ),
          ),
          TabBar(
            isScrollable: true,
            controller: tabController,
            indicatorColor: indicatorColor,
            indicatorWeight: 3.0,
            labelColor: labelColor,
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding:const EdgeInsets.only(
              top: 1.0,
              left: 15.0,
              right: 10.0,
            ),
            unselectedLabelColor: labelColor,
            tabs: const [
              Tab(
                child: Text(
                  'Wishlist',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'helves',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Ope\'s Wedding',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'helves',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Brunch',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'helves',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Auto Repair',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'helves',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              /*
                  Tab(
                    child: Text(
                      'Food and Market',
K
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'helves',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Fruits',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'helves',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Vegetables',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'helves',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Grains',
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
                  */
            ],
          ),
        ]))));
  }
}
