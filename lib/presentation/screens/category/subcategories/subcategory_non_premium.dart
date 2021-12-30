import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/presentation/screens/auth/help_page-1/tips.dart';
// import 'package:ajeo/presentation/screens/category/widgets/advert.dart';
import 'package:ajeo/presentation/widgets/count_down_clock.dart';
import 'package:ajeo/presentation/screens/category/widgets/sub_category_widget_premium.dart';
// import 'package:ajeo/presentation/screens/category/widgets/subcategory_item_non_premium.dart';
// import 'package:ajeo/presentation/widgets/drawer.dart';
// import 'package:ajeo/presentation/widgets/drawer1.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/routes/app_router.gr.dart';
// import 'package:ajeo/routes/app_router.gr.dart';
// import 'package:ajeo/utils/colors.dart';
import 'package:ajeo/utils/custon_page_route.dart';
// import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryNonPremium extends StatefulWidget {
  final bool isFromSearch;
  final CategoryModel? category;
  final SubcategoryModel? subactegory;
  final List<SubcategoryModel>? subcategories;
  const SubCategoryNonPremium(
      {Key? key,
      this.subcategories,
      this.category,
      this.isFromSearch = false,
      this.subactegory})
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
    if (widget.subcategories != null) {
      tabController =
          TabController(vsync: this, length: widget.subcategories!.length
              /* initialIndex: Get.arguments['initialIndex'] ?? 0,*/
              );
    }
  }

  @override
  Widget build(BuildContext context) {
    var authColor = const Color.fromRGBO(242, 39, 35, 1);
    // var size = MediaQuery.of(context).size;
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
                padding: EdgeInsets.only(
                  left: 7.0.w,
                  right: 7.0.w,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          // AutoRouter.of(context).pop();
                          Navigator.of(context)
                              .push(CustomPageRoute(child: const Tips()));
                        },
                        child: Container(
                          height: 34.0,
                          width: 34.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset('assets/images/light.png',
                              width: 5.w, height: 5.h),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    const Expanded(child: SearchBar()),
                  ],
                ),
              ),
              // const Advert(),
              SizedBox(height: 10.h),
              const CountDownClock(),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.0.w,
                  top: 10.0.w,
                ),
                child: Material(
                  child: InkWell(
                    child: Text(
                      widget.category!.categoryName!,
                      style: TextStyle(
                        fontFamily: 'helves',
                        fontSize: 19.0.sp,
                        color: const Color.fromRGBO(107, 107, 107, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      // Get.off(() => CategoryInFocusViewNonPremium());
                      print(widget.isFromSearch);
                      widget.isFromSearch
                          ? AutoRouter.of(context).replace(HomeNonPremium(
                              category: widget.subactegory!.category,
                              isFromSearch: true))
                          : AutoRouter.of(context).pop();
                    },
                  ),
                ),
              ),
              widget.isFromSearch
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Tab(
                                child: Text(
                                  widget.subactegory!.subcategoryName!,
                                  style: TextStyle(
                                    fontSize: 20.0.sp,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600,
                                    color: authColor,
                                  ),
                                ),
                              )),
                          SizedBox(
                              height: 500.h,
                              child: SubCategoryWidget(
                                products: widget.subactegory!.product,
                                subcategoryName:
                                    widget.subactegory!.subcategoryName,
                                categoryName: widget.category!.categoryName,
                              ))
                        ])
                  : TabBar(
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
                      tabs: widget.subcategories != null
                          ? widget.subcategories!
                              .map((e) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Tab(
                                      child: Text(
                                        e.subcategoryName!,
                                        style: TextStyle(
                                          fontSize: 20.0.sp,
                                          fontFamily: 'helves',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList()
                          : <Tab>[]),
//new henry begins here
              SizedBox(
                height: 500.h,
                child: TabBarView(
                    controller: tabController,
                    children: widget.subcategories!
                        .map((e) => SingleChildScrollView(
                            child: SizedBox(
                                height: 500.h,
                                child: SubCategoryWidget(
                                  products: e.product,
                                  subcategoryName: e.subcategoryName,
                                  categoryName: widget.category!.categoryName,
                                ))))
                        .toList()),
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
