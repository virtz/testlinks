import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: sizeFit(true, 139.0, context),
        height: sizeFit(false, 143.0, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: const [
                SizedBox(
                  width: 6.0,
                ),
                Text(
                  'Milk',
                  style: TextStyle(
                    fontSize: 23.0,
                    color: Color.fromRGBO(49, 49, 51, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'helves',
                  ),
                ),
              ],
            ),
            InkWell(
              child: Image.asset(
                'assets/images/milk.png',
                height: sizeFit(false, 65.0, context),
              ),
              onTap: () {
                // Get.to(() => ProductPage());
                AutoRouter.of(context).push(const ProductRoute());
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: sizeFit(true, 7.0, context),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'N200',
                    style: TextStyle(
                      color: Color.fromRGBO(8, 248, 36, 1),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Material(
                  //   color:const Color.fromRGBO(241, 48, 46, 1),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(12.0),
                  //   ),
                  //   child: InkWell(
                  //     borderRadius: BorderRadius.circular(26.0),
                  //     onTap: () {
                  //       // Get.dialog(Wishlist());
                  //     },
                  //     child: SizedBox(
                  //       width: sizeFit(true, 24.0, context),
                  //       height: sizeFit(false, 24.0, context),
                  //       child: const Icon(
                  //         Icons.add,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
