
import 'package:ajeo/presentation/screens/category/widgets/subcategory_item_non_premium.dart';
import 'package:flutter/material.dart';

class SubCategoryWidget extends StatelessWidget {
  const SubCategoryWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
      gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 40,
        mainAxisSpacing: 23,
        childAspectRatio: 1,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return GestureDetector(
          child:const SubCategoryItem(),
        );
      },
      padding: const EdgeInsets.only(bottom: 30.0),
    );
  }
  }
