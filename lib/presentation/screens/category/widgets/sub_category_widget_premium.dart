import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/presentation/screens/category/widgets/subcategory_item_non_premium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryWidget extends StatefulWidget {
  final String? categoryName;
  final String? subcategoryName;
  final String? subcategoryId;
  final List<Product>? products;

  const SubCategoryWidget(
      {Key? key,
      this.products,
      this.categoryName,
      this.subcategoryName,
      this.subcategoryId})
      : super(key: key);

  @override
  State<SubCategoryWidget> createState() => _SubCategoryWidgetState();
}

class _SubCategoryWidgetState extends State<SubCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.5.w),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 30,
          // mainAxisSpacing: 15,
          childAspectRatio: 0.75,
        ),
        itemCount: widget.products!.length,
        itemBuilder: (context, index) {
          // print(widget.subcategoryId);
          Product prd = widget.products![index];
          return GestureDetector(
            child: SubCategoryItem(
              product: prd,
              products: widget.products,
              subcategoryId: widget.subcategoryId,
              subcategoryName: widget.subcategoryName,
              categoryName: widget.categoryName,
            ),
          );
        },
        padding: EdgeInsets.only(bottom: 30.0.w),
      ),
    );
  }
}
