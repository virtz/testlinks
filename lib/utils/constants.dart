import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/models/uos.dart';
import 'package:ajeo/core/models/variety.dart';

const imagebaseUrl = "https://aje-o.herokuapp.com/";

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

const htmlData = """<p>  
<ol>
<li>Click anywhere and just start typing.</li>
<li>Hit the / to see all the types of content you can create - headers,videos, sub pages </li>
<li>Highlight any text and use the menu that pops up to style your writing however you like</li>
<li>See the -- to the lefy of this checkbox on hover? Click and drag to move this line</li>
<li>Click anywhere and just start typing.</li>
<li>Click anywhere and just start typing.</li>
<li>Invite your teammates to work with your in Settings & Members.</li>
<li>Click anywhere and just start typing.</li>
<li>Click anywhere and just start typing.</li>
<li>Click anywhere and just start typing.</li>
</ol>
</p>""";
