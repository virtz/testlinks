// ignore_for_file: deprecated_member_use

import 'package:ajeo/core/models/special_category.dart';
import 'package:ajeo/core/models/special_product.dart';
import 'package:ajeo/presentation/screens/auth/help_page-1/tips.dart';
import 'package:ajeo/presentation/screens/home/special_category_view_model.dart';
import 'package:ajeo/presentation/widgets/count_down_clock.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/custon_page_route.dart';
import 'package:ajeo/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

class SpecialCategoryPage extends StatefulWidget {
  const SpecialCategoryPage({Key? key}) : super(key: key);

  @override
  _SpecialCategoryPageState createState() => _SpecialCategoryPageState();
}

class _SpecialCategoryPageState extends State<SpecialCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SpecialCategoryViewModel>.reactive(
      onModelReady: (h) {
        h.getSpecialCategory();
      },
      viewModelBuilder: () => SpecialCategoryViewModel(),
      builder: (context, model, child) => Scaffold(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(HomeNonPremium());
                },
                child: Text('Go to HomePage',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey))),
          ),
          SizedBox(height: 20.h),
          model.isBusy
              ? Center(
                  child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).primaryColor)),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: model.spc.length,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    SpecialCategory spc = model.spc[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Text(
                            spc.special_category_name!,
                            style: TextStyle(
                              fontSize: 20.0.sp,
                              color: Theme.of(context).accentColor,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w700,
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
                                : spc.special_product!.isEmpty
                                    ? Center(
                                        child: Text(
                                            'No products for category ${spc.special_category_name}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17.0.sp)),
                                      )
                                    : Padding(
                                        padding: EdgeInsets.all(8.0.w),
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount:
                                                spc.special_product!.length,
                                            itemBuilder: (context, index) {
                                              SpecialProduct ppc =
                                                  spc.special_product![index];
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
                                                        width: 135.w,
                                                        height: 35.5.h,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: ppc.productname!
                                                                        .length >=
                                                                    17
                                                                ? 0.0
                                                                : 15.5.w,
                                                          ),
                                                          child: Text(
                                                            capitalize(ppc
                                                                .productname!),
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
                                                                  //TODO: SUBCAT IMAGE
                                                                  // subCat
                                                                  //             .subcategoryimage ==
                                                                  //         null
                                                                  //     ?
                                                                  Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0.w),
                                                            child: Container(
                                                                decoration: const BoxDecoration(
                                                                    image: DecorationImage(
                                                                        fit: BoxFit.cover,
                                                                        image: AssetImage(
                                                                          'assets/images/red.png',
                                                                        )))),
                                                          )),
                                                          onTap: () {
                                                            // Get.to(
                                                            //   () => SubCategoryViewNonPremium(),
                                                            // AutoRouter.of(context).push(SubCategoryNonPremium(
                                                            //     intialIndex:
                                                            //         index,
                                                            //     subactegory:
                                                            //         cm.subcategory![
                                                            //             index],
                                                            //     category:
                                                            //         cm,
                                                            //     subcategories:
                                                            //         cm.subcategory));
                                                            // //   arguments: argument,
                                                            // );
                                                            AutoRouter.of(
                                                                    context)
                                                                .push(
                                                                    ProductRoute(
                                                              // product: widget.product,
                                                              productId: ppc.id,
                                                              subcategoryId:
                                                                  spc.id,
                                                              isFromSpecialCat:
                                                                  true,
                                                              // products: widget.products,
                                                              subcaegoryName: spc
                                                                  .special_category_name,
                                                              categoryName: spc
                                                                  .special_category_name,
                                                            ));
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            })))
                      ],
                    );
                  })
        ],
      )))),
    );
  }
}
