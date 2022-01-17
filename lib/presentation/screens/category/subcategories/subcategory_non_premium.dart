// ignore_for_file: deprecated_member_use

import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/presentation/screens/auth/help_page-1/tips.dart';
// import 'package:ajeo/presentation/screens/category/widgets/advert.dart';
import 'package:ajeo/presentation/widgets/count_down_clock.dart';
import 'package:ajeo/presentation/screens/category/widgets/sub_category_widget_premium.dart';

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
  final int? intialIndex;
  final CategoryModel? category;
  final SubcategoryModel? subactegory;
  final List<SubcategoryModel>? subcategories;
  const SubCategoryNonPremium(
      {Key? key,
      this.subcategories,
      this.category,
      this.isFromSearch = false,
      this.subactegory,
      this.intialIndex})
      : super(key: key);

  @override
  _SubCategoryNonPremiumState createState() => _SubCategoryNonPremiumState();
}

class _SubCategoryNonPremiumState extends State<SubCategoryNonPremium>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  // var authColor =  Theme.of(context).primaryColor;

  TabController? tabController;
  int? selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    // print("subcate: ${widget.subcategories!.length}");
    // print(widget.category!.toJson());
    if (widget.subcategories != null || widget.subcategories!.isNotEmpty) {
      tabController = TabController(
          vsync: this,
          length: widget.subcategories!.length,
          initialIndex: widget.intialIndex ?? 0
          /* initialIndex: Get.arguments['initialIndex'] ?? 0,*/
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    var authColor = Theme.of(context).primaryColor;
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      // drawer: const MenuDrawer(),
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          // physics:const  NeverScrollableScrollPhysics(),
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
                        top: 0.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          // AutoRouter.of(context).pop();
                          Navigator.of(context)
                              .push(CustomPageRoute(child: const Tips()));
                        },
                        child: Container(
                          height: 25.0.h,
                          width: 25.0.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset('assets/images/lamp.png',
                              width: 5.w,
                              height: 2.h,
                              color: Theme.of(context).accentColor),
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
                      // print(widget.isFromSearch);
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
                              padding: EdgeInsets.only(
                                left: 12.0.w,
                                top: 10.0.w,
                              ),
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
                                subcategoryId: widget.subactegory!.id,
                                products: widget.subactegory!.product,
                                subcategoryName:
                                    widget.subactegory!.subcategoryName,
                                categoryName: widget.category!.categoryName,
                              ))
                        ])
                  : TabBar(
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                            width: 4,
                            color: authColor,
                          ),
                          insets: EdgeInsets.only(
                              left: 7.w, right: 8.w, bottom: 0)),
                      isScrollable: true,
                      controller: tabController,
                      indicatorColor: Theme.of(context).accentColor,
                      indicatorWeight: 2.0,
                      automaticIndicatorColorAdjustment: true,
                      labelColor: authColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelPadding: EdgeInsets.only(
                        top: 1.0,
                        left: 7.0.w,
                        right: 10.0,
                      ),
                      unselectedLabelColor: authColor,
                      tabs: widget.subcategories != null
                          ? widget.subcategories!
                              .map((e) => Padding(
                                    padding: EdgeInsets.all(5.0.w),
                                    child: Tab(
                                      child: Text(
                                        e.subcategoryName!,
                                        style: TextStyle(
                                          fontSize: 17.0.sp,
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
                height: 300.h,
                child: TabBarView(
                    controller: tabController,
                    children: widget.subcategories!
                        .map((e) => SubCategoryWidget(
                              products: e.product,
                              subcategoryId: e.id,
                              subcategoryName: e.subcategoryName,
                              categoryName: widget.category!.categoryName,
                            ))
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
