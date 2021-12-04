import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/presentation/screens/category/widgets/subcategory_item_non_premium.dart';
import 'package:flutter/material.dart';

class SubCategoryWidget extends StatefulWidget {
  final String? categoryName;
  final String? subcategoryName;
  final List<Product>? products;

  const SubCategoryWidget(
      {Key? key, this.products, this.categoryName, this.subcategoryName})
      : super(key: key);

  @override
  State<SubCategoryWidget> createState() => _SubCategoryWidgetState();
}

class _SubCategoryWidgetState extends State<SubCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 40,
        mainAxisSpacing: 23,
        childAspectRatio: 1,
      ),
      itemCount: widget.products!.length,
      itemBuilder: (context, index) {
        Product prd = widget.products![index];
        return GestureDetector(
          child: SubCategoryItem(
            product: prd,
            subcategoryName: widget.subcategoryName,
            categoryName: widget.categoryName,
          ),
        );
      },
      padding: const EdgeInsets.only(bottom: 30.0),
    );
  }
}
