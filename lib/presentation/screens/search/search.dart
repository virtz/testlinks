// ignore_for_file: missing_required_param, unnecessary_null_comparison

import 'dart:developer';

import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/presentation/screens/auth/local_widgets/textfield.dart';
import 'package:ajeo/presentation/screens/search/seach_view_model.dart';
import 'package:ajeo/routes/app_router.gr.dart';
// import 'package:ajeo/utils/constants.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<SearchViewModel>.reactive(
      // model
      viewModelBuilder: () => SearchViewModel(),
      onModelReady: (h) {
        h.getCategory();
      },
      builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.white,
          body: ListView(children: [
            Padding(
              padding: EdgeInsets.only(
                left: sizeFit(true, 9.0, context),
                top: 9.0,
              ),
              child: Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 318.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFieldContainer(
                            onChanged: (val) => model.search(val),
                            onSubmitted: (val) => model.search(val),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.0.w,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).pop();
                      },
                      child: const Icon(
                        FontAwesomeIcons.timesCircle,
                        color: Color(0xFFeb8662),
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20..h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Text('In Categories',
                  style: TextStyle(
                      fontFamily: "helves",
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFeb8662))),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: model.filteredCategories.length,
                itemBuilder: (context, index) {
                  CategoryModel cm = model.filteredCategories[index];
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          log(cm.toJson().toString());
                          AutoRouter.of(context).replace(
                              HomeNonPremium(category: cm, isFromSearch: true));
                        },
                        child: Material(
                          elevation: 2.0,
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              width: size.width,
                              height: 60.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(cm.categoryName!,
                                      style: const TextStyle(
                                        fontFamily: "helves",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      )),
                                  SizedBox(height: 20.h),
                                ],
                              )),
                        ),
                      ),
                      SizedBox(height: 10.h)
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 20..h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Text('In Subcategories',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "helves",
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFeb8662))),
            ),
            // SizedBox(height: 20..h),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: model.filtedSubcateggories.length,
                  itemBuilder: (context, index) {
                    SubcategoryModel scm = model.filtedSubcateggories[index];
                    return GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(SubCategoryNonPremium(
                            isFromSearch: true,
                            category: scm.category,
                            subcategories: const <SubcategoryModel>[],
                            subactegory: scm));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Material(
                            elevation: 2.0,
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10),
                                width: size.width,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(scm.subcategoryName!,
                                        style: const TextStyle(
                                          fontFamily: "helves",
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(height: 20.h),
                                  ],
                                )),
                          ),
                          SizedBox(height: 10.h)
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20..h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Text('In Products',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "helves",
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFeb8662))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: model.filteredProducts.length,
                  itemBuilder: (context, index) {
                    Product prdt = model.filteredProducts[index];
                    return GestureDetector(
                      onTap: () {
                        log(prdt.subcategory!.product.toString());
                        AutoRouter.of(context).push(ProductRoute(
                            isFromSearch: true,
                            product: prdt,
                            productId: prdt.id,
                            subcategoryId: prdt.subcategory!.id,
                            products: prdt.subcategory!.product,
                            subcaegoryName: prdt.subcategory!.subcategoryName,
                            categoryName: prdt.category!.categoryName));
                      },
                      child: Column(
                        children: [
                          Material(
                            elevation: 2.0,
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10),
                                width: size.width,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(prdt.productname!,
                                            style: const TextStyle(
                                              fontFamily: "helves",
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        prdt.variety!.isEmpty
                                            ? const Text("")
                                            : Row(
                                                children: [
                                                  Text(
                                                      prdt.variety![0]
                                                              .varietyname ??
                                                          "",
                                                      style: const TextStyle(
                                                          color: Colors.grey)),
                                                  prdt.variety![0].uos!
                                                          .isNotEmpty
                                                      ? Text(
                                                          "/" +
                                                              prdt
                                                                  .variety![0]
                                                                  .uos![0]
                                                                  .uosname!,
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .grey))
                                                      : const Text("")
                                                ],
                                              )
                                      ],
                                    ),
                                    SizedBox(height: 20.h),
                                  ],
                                )),
                          ),
                          SizedBox(height: 10.h)
                        ],
                      ),
                    );
                  }),
            )
          ])),
    );
  }
}
