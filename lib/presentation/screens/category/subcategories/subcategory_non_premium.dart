import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/subcategory.dart';
// import 'package:ajeo/presentation/screens/category/widgets/advert.dart';
import 'package:ajeo/presentation/widgets/count_down_clock.dart';
import 'package:ajeo/presentation/screens/category/widgets/sub_category_widget_premium.dart';
// import 'package:ajeo/presentation/screens/category/widgets/subcategory_item_non_premium.dart';
// import 'package:ajeo/presentation/widgets/drawer.dart';
// import 'package:ajeo/presentation/widgets/drawer1.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/colors.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SubCategoryNonPremium extends StatefulWidget {
  final CategoryModel? category;
  final List<SubcategoryModel>? subcategories;
  const SubCategoryNonPremium({Key? key, this.subcategories, this.category})
      : super(key: key);

  @override
  _SubCategoryNonPremiumState createState() => _SubCategoryNonPremiumState();
}

class _SubCategoryNonPremiumState extends State<SubCategoryNonPremium>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var authColor = const Color.fromRGBO(242, 39, 35, 1);

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(vsync: this, length: widget.subcategories!.length
            /* initialIndex: Get.arguments['initialIndex'] ?? 0,*/
            );
  }

  @override
  Widget build(BuildContext context) {
    var authColor = const Color.fromRGBO(242, 39, 35, 1);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      // drawer: const MenuDrawer(),
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      body: SafeArea(
        child: SingleChildScrollView(
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
                    const Expanded(child: SearchBar()),
                  ],
                ),
              ),
              // const Advert(),
              const CountDownClock(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  top: 10.0,
                ),
                child: Material(
                  child: InkWell(
                    child: Text(
                      widget.category!.categoryName!,
                      style: const TextStyle(
                        fontFamily: 'helves',
                        fontSize: 19.0,
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      // Get.off(() => CategoryInFocusViewNonPremium());
                      AutoRouter.of(context).pop();
                    },
                  ),
                ),
              ),
              TabBar(
                  isScrollable: true,
                  controller: tabController,
                  indicatorColor: authColor,
                  indicatorWeight: 3.0,
                  labelColor: authColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: const EdgeInsets.only(
                    top: 1.0,
                    left: 15.0,
                    right: 10.0,
                  ),
                  unselectedLabelColor: authColor,
                  tabs: widget.subcategories!
                      .map((e) => Tab(
                            child: Text(
                              e.subcategoryName!,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ))
                      .toList()),
//new henry begins here
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: sizeFit(false, 400, context),
                  child: TabBarView(
                      controller: tabController,
                      children: widget.subcategories!
                          .map((e) => SingleChildScrollView(
                              child: SizedBox(
                                  height: size.height * 0.4,
                                  child: SubCategoryWidget(
                                    products: e.product,
                                    subcategoryName: e.subcategoryName,
                                    categoryName: widget.category!.categoryName,
                                  ))))
                          .toList()),
                ),
              )
            ],
          ),
/*ends here
            ),
            /*Expanded(
                    child: TabBarView(
                      children: [
                        SubCategoryItem(),
                        SubCategoryItem(),
                        SubCategoryItem(),
                        SubCategoryItem(),
                        SubCategoryItem(),
                        SubCategoryItem(),
                      ],
                    ),
                  )*/
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SubCategoryItem(),
            ),
          ],
*/
        ),
      ),
    );
  }
}
