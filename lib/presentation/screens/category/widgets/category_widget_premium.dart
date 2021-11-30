

import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';

class CategoryWidgetPremium extends StatelessWidget {
   final String subCategoryName;
  const CategoryWidgetPremium({ Key? key,this.subCategoryName = 'Dairy and Milk'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        childAspectRatio: 1,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
            width: sizeFit(true, 90.0, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:const  EdgeInsets.only(
                    top: 7.0,
                    left: 7.0,
                  ),
                  child: InkWell(
                    onTap: (){
                  //    Get.to();
                    },
                    child: Text(
                      subCategoryName,
                      style: const TextStyle(
                        fontFamily: 'helves',
                        fontSize: 10,
                        color: Color.fromRGBO(49, 49, 51, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
            const     SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  child: Center(
                    child: Image.asset(
                      'assets/images/egg.png',
                    ),
                  ),
                  onTap: () {
                  // Get.to(() => SubCategoryViewPremium());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
