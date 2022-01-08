import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';

import 'package:ajeo/core/models/product2.dart';
// import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/models/subcategory2.dart';
import 'package:ajeo/core/services/index.dart';
import 'package:ajeo/utils/paths.dart';

class ProductService {
  getSubcategory(String? id) async {
    final result = await http.get(Paths.GET_SUBCATEGORY + "/$id");
    if (result is ErrorModel) {
      return ErrorModel(result.error);
    }
    if (result is SuccessModel) {
      var data = result.data;
      SubcategoryModel2 subcat = SubcategoryModel2.fromJson(data);
      return SuccessModel(subcat);
    }
  }

  getProduct(String? id) async {
    final result = await http.get(Paths.GET_PRODUCT + "/$id");
    if (result is ErrorModel) {
      return ErrorModel(result.error);
    }
    if (result is SuccessModel) {
      var data = result.data;
      Product2 prdt = Product2.fromJson(data);
      return SuccessModel(prdt);
    }
  }
}
