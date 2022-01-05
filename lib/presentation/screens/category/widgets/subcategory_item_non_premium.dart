import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/constants.dart';
// import 'package:ajeo/utils/size_fit.dart';
import 'package:ajeo/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryItem extends StatelessWidget {
  final String? categoryName;
  final String? subcategoryName;
  final Product? product;
  final List<Product>? products;
  final String? subcategoryId;
  const SubCategoryItem(
      {Key? key,
      this.product,
      this.categoryName,
      this.subcategoryName,
      this.products,
      this.subcategoryId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 100.w,
          height: 35.5.h,
          child: Padding(
            padding: EdgeInsets.only(
              top: product!.productname!.length > 18 ? 0.0 : 15.5.w,
            ),
            child: Text(
              capitalize(product!.productname!),
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 13.0.sp,
                color: const Color.fromRGBO(49, 49, 51, 1),
                fontWeight: FontWeight.w500,
                fontFamily: 'helves',
              ),
            ),
          ),
        ),
        Container(
          height: 130.h,
          width: 160.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.white,
          ),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0.r),
            ),
            child: Column(
              children: [
                InkWell(
                  child: product!.productimage == null
                      ? Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0.w),
                              child: Container(
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/placeholder.jpg',
                                          )))),
                            ),
                            // Positioned(
                            //   bottom: 0,
                            //   // left: 100,
                            //   right: 2,
                            //   child: Material(
                            //     color: Theme.of(context).primaryColor,
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(12.0),
                            //     ),
                            //     child: InkWell(
                            //       borderRadius: BorderRadius.circular(26.0),
                            //       onTap: () {
                            //         // Get.dialog(Wishlist());
                            //       },
                            //       child: Icon(Icons.add,
                            //           color: Colors.white, size: 15.0.h),
                            //     ),
                            //   ),
                            // )
                          ],
                        )
                      : Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0.w),
                              child: Container(
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(imagebaseUrl +
                                              product!.productimage!)))),
                            ),
                            // Positioned(
                            //   bottom: 0,
                            //   // left: 100,
                            //   right: 2,
                            //   child: Material(
                            //     color: Theme.of(context).primaryColor,
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(12.0),
                            //     ),
                            //     child: InkWell(
                            //       borderRadius: BorderRadius.circular(26.0),
                            //       onTap: () {
                            //         // Get.dialog(Wishlist());
                            //       },
                            //       child: Icon(Icons.add,
                            //           color: Colors.white, size: 15.0.h),
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                  onTap: () {
                    // Get.to(() => ProductPage());
                    // print(product!.id);
                    AutoRouter.of(context).push(ProductRoute(
                        product: product,
                        productId: product!.id,
                        subcategoryId: subcategoryId,
                        products: products,
                        subcaegoryName: subcategoryName,
                        categoryName: categoryName));
                  },
                ),
                //         // Align(
                //         //   alignment: Alignment.bottomRight,
                //         //   child: Material(
                //         //     color: const Color.fromRGBO(241, 48, 46, 1),
                //         //     shape: RoundedRectangleBorder(
                //         //       borderRadius: BorderRadius.circular(12.0),
                //         //     ),
                //         //     child: InkWell(
                //         //       borderRadius: BorderRadius.circular(26.0),
                //         //       onTap: () {
                //         //         // Get.dialog(Wishlist());
                //         //       },
                //         //       child: Icon(Icons.add, color: Colors.white, size: 15.0.h),
                //         //     ),
                //         //   ),
                //         // ),
              ],
            ),
          ),
        ),
        // Container(height: 130.h, width: 160.w, decoration: BoxDecoration())
      ],
    );
  }
}
