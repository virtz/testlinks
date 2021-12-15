

import 'package:ajeo/presentation/widgets/pop-ups/wish_list.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCategotyItemPremium extends StatelessWidget {
  const SubCategotyItemPremium({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        shrinkWrap: true,
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(2, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
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
                          fontSize: 21.0,
                          color: Color.fromRGBO(49, 49, 51, 1),
                          fontWeight: FontWeight.bold,
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
                      // Get.to(() => ProductPagePremium2());
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: sizeFit(true, 7.0, context),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                   const     Text(
                          'N200',
                          style: TextStyle(
                            color: Color.fromRGBO(8, 248, 36, 1),
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Material(
                          color:const Color.fromRGBO(241, 48, 46, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(26.0),
                            onTap: () {
                              Get.dialog(const WishList());
                            },
                            child:  SizedBox(
                              width: sizeFit(true, 24.0, context),
                              height: sizeFit(false, 24.0, context),
                              child:const  Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      );
  }
}