// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use

import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/presentation/screens/auth/help_page-1/tips.dart';
import 'package:ajeo/presentation/screens/home/home_view_model.dart';
import 'package:ajeo/presentation/widgets/count_down_clock.dart';
// import 'package:ajeo/presentation/widgets/drawer.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/constants.dart';
import 'package:ajeo/utils/custon_page_route.dart';
// import 'package:ajeo/utils/colors.dart';
// import 'package:ajeo/utils/size_fit.dart';
import 'package:ajeo/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import 'package:stacked/stacked.dart';

class HomeNonPremium extends StatefulWidget {
  final bool isFromSearch;
  final CategoryModel? category;
  const HomeNonPremium({
    Key? key,
    this.category,
    this.isFromSearch = false,
  }) : super(key: key);

  @override
  _HomeNonPremiumState createState() => _HomeNonPremiumState();
}

class Categories {}

class _HomeNonPremiumState extends State<HomeNonPremium> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (h) {
        widget.isFromSearch ? null : h.getCategory();
        // h.categories = categoryList;
      },
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
          key: scaffoldKey,
          // drawer: const MenuDrawer(),
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                  const SearchBar(),
                ],
              ),
              const CountDownClock(),
              SizedBox(height: 44.h),
              widget.isFromSearch
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          InkWell(
                            onTap: () {
                              // Get.to(
                              //   () => CategoryInFocusViewNonPremium(),
                              //   arguments: argument,
                              // );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Text(
                                widget.category!.categoryName!,
                                style: TextStyle(
                                  fontSize: 20.0.sp,
                                  color: const Color.fromRGBO(47, 47, 52, 1),
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 250.h,
                            child: widget.category!.subcategory!.isEmpty
                                ? Center(
                                    child: Text(
                                        'No subcategories for category ${widget.category!.categoryName}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0.sp)),
                                  )
                                : Padding(
                                    padding: EdgeInsets.all(8.0.w),
                                    child: ListView.builder(
                                      key: UniqueKey(),
                                      padding: EdgeInsets.only(bottom: 24.0.sp),
                                      itemBuilder: (context, index) {
                                        // model.getSubcategory(cm.id!);

                                        SubcategoryModel subCat = widget
                                            .category!.subcategory![index];
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 7.0,
                                                  left: 7.0,
                                                ),
                                                child: SizedBox(
                                                  width: 150.w,
                                                  height: 35.5.h,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      top:
                                                          subCat.subcategoryName!
                                                                      .length >
                                                                  18
                                                              ? 0.0
                                                              : 15.5.w,
                                                    ),
                                                    child: Text(
                                                      capitalize(subCat
                                                          .subcategoryName!),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        fontFamily: 'helves',
                                                        fontSize: 13.5.sp,
                                                        color: const Color
                                                                .fromRGBO(
                                                            47, 47, 52, 1),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 140.h,
                                                width: 160.w,
                                                child: Card(
                                                  elevation: 5.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0.r),
                                                  ),
                                                  child: InkWell(
                                                    child: Center(
                                                      child:
                                                          subCat.subcategoryimage ==
                                                                  null
                                                              ? Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(8.0
                                                                              .w),
                                                                  child: Container(
                                                                      decoration: const BoxDecoration(
                                                                          image: DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: AssetImage(
                                                                                'assets/images/placeholder.jpg',
                                                                              )))),
                                                                )
                                                              : Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(8.0
                                                                              .w),
                                                                  child: Container(
                                                                      decoration: BoxDecoration(
                                                                          image: DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: NetworkImage(
                                                                                imagebaseUrl + subCat.subcategoryimage!,
                                                                              )))),
                                                                ),
                                                    ),
                                                    onTap: () {
                                                      // Get.to(
                                                      //   () => SubCategoryViewNonPremium(),
                                                      AutoRouter.of(context).push(
                                                          SubCategoryNonPremium(
                                                              isFromSearch:
                                                                  true,
                                                              category: widget
                                                                  .category,
                                                              subactegory: widget
                                                                      .category!
                                                                      .subcategory![
                                                                  index],
                                                              subcategories: widget
                                                                  .category!
                                                                  .subcategory));
                                                      //   arguments: argument,
                                                      // );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      itemCount:
                                          widget.category!.subcategory!.length,
                                      scrollDirection: Axis.horizontal,
                                      physics: const ScrollPhysics(),
                                    ),
                                  ),
                          ),
                        ])
                  : ListView.builder(
                      key: UniqueKey(),
                      shrinkWrap: true,
                      itemCount: model.categories.length,
                      physics: const ScrollPhysics(),
                      itemBuilder: (context, index) {
                        CategoryModel cm = model.categories[index];

                        // List<SubcategoryModel> subCategories = <SubcategoryModel>[];
                        // model.getEachSubcategory(cm.id!).then((value) {
                        //   setState(() {
                        //     subCategories = value;
                        //   });
                        // });
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                // Get.to(
                                //   () => CategoryInFocusViewNonPremium(),
                                //   arguments: argument,
                                // );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: Text(
                                  cm.categoryName!,
                                  style: TextStyle(
                                    fontSize: 20.0.sp,
                                    color: const Color.fromRGBO(47, 47, 52, 1),
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 250.h,
                              child: model.isBusy
                                  ? Center(
                                      child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                        Theme.of(context).primaryColor,
                                      )),
                                    )
                                  : cm.subcategory!.isEmpty
                                      ? Center(
                                          child: Text(
                                              'No subcategories for category ${cm.categoryName}',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17.0.sp)),
                                        )
                                      : Padding(
                                          padding: EdgeInsets.all(8.0.w),
                                          child: ListView.builder(
                                            key: UniqueKey(),
                                            padding: EdgeInsets.only(
                                                bottom: 24.0.sp),
                                            itemBuilder: (context, index) {
                                              // model.getSubcategory(cm.id!);

                                              SubcategoryModel subCat =
                                                  cm.subcategory![index];
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5,
                                                        vertical: 5),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 7.0,
                                                        left: 7.0,
                                                      ),
                                                      child: SizedBox(
                                                        width: 150.w,
                                                        height: 35.5.h,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: subCat.subcategoryName!
                                                                        .length >
                                                                    18
                                                                ? 0.0
                                                                : 15.5.w,
                                                          ),
                                                          child: Text(
                                                            capitalize(subCat
                                                                .subcategoryName!),
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'helves',
                                                              fontSize: 13.5.sp,
                                                              color: const Color
                                                                      .fromRGBO(
                                                                  47,
                                                                  47,
                                                                  52,
                                                                  1),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 140.h,
                                                      width: 160.w,
                                                      child: Card(
                                                        elevation: 5.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0.r),
                                                        ),
                                                        child: InkWell(
                                                          child: Center(
                                                            child:
                                                                subCat.subcategoryimage ==
                                                                        null
                                                                    ? Padding(
                                                                        padding:
                                                                            EdgeInsets.all(8.0.w),
                                                                        child: Container(
                                                                            decoration: const BoxDecoration(
                                                                                image: DecorationImage(
                                                                                    fit: BoxFit.cover,
                                                                                    image: AssetImage(
                                                                                      'assets/images/placeholder.jpg',
                                                                                    )))),
                                                                      )
                                                                    : Padding(
                                                                        padding:
                                                                            EdgeInsets.all(8.0.w),
                                                                        child: Container(
                                                                            decoration: BoxDecoration(
                                                                                image: DecorationImage(
                                                                                    fit: BoxFit.cover,
                                                                                    image: NetworkImage(
                                                                                      imagebaseUrl + subCat.subcategoryimage!,
                                                                                    )))),
                                                                      ),
                                                          ),
                                                          onTap: () {
                                                            // Get.to(
                                                            //   () => SubCategoryViewNonPremium(),
                                                            AutoRouter.of(
                                                                    context)
                                                                .push(SubCategoryNonPremium(
                                                                    intialIndex:
                                                                        index,
                                                                    subactegory:
                                                                        cm.subcategory![
                                                                            index],
                                                                    category:
                                                                        cm,
                                                                    subcategories:
                                                                        cm.subcategory));
                                                            //   arguments: argument,
                                                            // );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                            itemCount: cm.subcategory!.length,
                                            scrollDirection: Axis.horizontal,
                                            physics: const ScrollPhysics(),
                                          ),
                                        ),
                            ),
                          ],
                        );
                      },
                    ),
            ],
          )))),
    );
  }
}
