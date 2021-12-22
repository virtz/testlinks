// ignore_for_file: avoid_unnecessary_containers

import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/presentation/screens/home/home_view_model.dart';
import 'package:ajeo/presentation/widgets/count_down_clock.dart';
// import 'package:ajeo/presentation/widgets/drawer.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/constants.dart';
// import 'package:ajeo/utils/colors.dart';
// import 'package:ajeo/utils/size_fit.dart';
import 'package:ajeo/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import 'package:stacked/stacked.dart';

class HomeNonPremium extends StatefulWidget {
  const HomeNonPremium({Key? key}) : super(key: key);

  @override
  _HomeNonPremiumState createState() => _HomeNonPremiumState();
}

class _HomeNonPremiumState extends State<HomeNonPremium> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (h) {
        h.getCategory();
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
              const SearchBar(),

              const CountDownClock(),
              // InkWell(
              //   onTap: () {
              //     scaffoldKey.currentState!.openDrawer();
              //   },
              //   child: Padding(
              //     padding: EdgeInsets.only(
              //       top: sizeFit(false, 30.0, context),
              //       left: sizeFit(true, 10.0, context),
              //     ),
              //     child: const Icon(
              //       Icons.perm_identity,
              //       color: kHomePageIconColor,
              //       size: 60,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(
              //     top: sizeFit(false, 24.0, context),
              //   ),
              //   child: Container(
              //     height: sizeFit(false, 100.0, context),
              //     width: sizeFit(true, 375, context),
              //     color: const Color.fromRGBO(254, 144, 168, 1),
              //     child: Padding(
              //       padding: EdgeInsets.only(
              //         left: sizeFit(true, 30.0, context),
              //         right: sizeFit(true, 44.0, context),
              //       ),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             'Trending \nItem \nPreview/AD'.toUpperCase(),
              //             style: const TextStyle(
              //               color: Colors.black,
              //               fontSize: 19.0,
              //               fontFamily: 'helves',
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //           SvgPicture.asset('assets/images/downtrend.svg'),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 44.h),
              ListView.builder(
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
                                  valueColor: AlwaysStoppedAnimation<Color>(
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
                                      padding: EdgeInsets.only(bottom: 24.0.sp),
                                      itemBuilder: (context, index) {
                                        // model.getSubcategory(cm.id!);

                                        SubcategoryModel subCat =
                                            cm.subcategory![index];
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
                                                                  20
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
                                                              category: cm,
                                                              subcategories: cm
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
