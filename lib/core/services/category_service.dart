import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';
import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/services/index.dart';
import 'package:ajeo/utils/paths.dart';

class CategoryService {
  getCategory() async {
    final result = await http.get(Paths.GET_CATEGORY);
    if (result is ErrorModel) {
      return ErrorModel(result.error);
    }
    var data = result.data;
    List<CategoryModel> categoryList =
        List.from(data.map((item) => CategoryModel.fromJson(item)));
    return SuccessModel(categoryList);
  }
    getSubcategories(String id) async {
    final result = await http.get(Paths.GET_CATEGORY+"/$id/subcategory/list");
    if (result is ErrorModel) {
      return ErrorModel(result.error);
    }
    var data = result.data;
    List<SubcategoryModel> subcategoryList =
        List.from(data.map((item) => SubcategoryModel.fromJson(item)));
    return SuccessModel(subcategoryList);
  }
}
