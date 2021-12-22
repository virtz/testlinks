import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/models/uos.dart';
import 'package:ajeo/core/models/variety.dart';

const imagebaseUrl = "http://13.40.118.255/";

List<CategoryModel> categoryList = [
  CategoryModel(
      id: "mskfksfs fs s fs",
      categoryName: "Category_one",
      subcategory: [
        SubcategoryModel(
            id: "mdms;fmsdfs,s",
            subcategoryName: "Subcategory_one.one",
            product: [
              Product(
                  id: "mkds ms",
                  productname: "Product_One",
                  productimage: "assets/images/placeholder.jpg",
                  variety: [
                    Variety(id: "kskvksd s", varietyname: "Variety_One", uos: [
                      Uos(
                        id: "dsfkdmsmdfsdf",
                        uosname: "Uos_one",
                      )
                    ])
                  ])
            ])
      ],
      createdAt: 'dmadmamdlsmda'),
];
