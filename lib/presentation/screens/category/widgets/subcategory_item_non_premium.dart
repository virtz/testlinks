import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/constants.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:ajeo/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryItem extends StatelessWidget {
  final String? categoryName;
  final String? subcategoryName;
  final Product? product;
  const SubCategoryItem(
      {Key? key, this.product, this.categoryName, this.subcategoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 90.w,
          height: 35.h,
          child: Padding(
            padding: EdgeInsets.only(
              top: product!.productname!.length > 11 ? 0.0 : 15.5.w,
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
          height: 80.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              InkWell(
                child: product!.productimage == null
                    ? Image.asset('assets/images/placeholder.jpg',
                        height: 62.h, width: 70.w)
                    : Image.network(imagebaseUrl + product!.productimage!,
                        height: 62.h, width: 70.w),
                onTap: () {
                  // Get.to(() => ProductPage());
                  AutoRouter.of(context).push(ProductRoute(
                      product: product,
                      subcaegoryName: subcategoryName,
                      categoryName: categoryName));
                },
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Material(
                  color: const Color.fromRGBO(241, 48, 46, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(26.0),
                    onTap: () {
                      // Get.dialog(Wishlist());
                    },
                    child: Icon(Icons.add, color: Colors.white, size: 15.0.h),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
