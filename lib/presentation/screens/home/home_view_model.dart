import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';
import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/services/category_service.dart';
import 'package:ajeo/locator.dart';
import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final CategoryService _categoryService = locator<CategoryService>();

  List<CategoryModel> categories = <CategoryModel>[];
  List<SubcategoryModel> subCategories = <SubcategoryModel>[];

  getCategory() async {
    final result = await _categoryService.getCategory();
    if (result is ErrorModel) {
      showErrorToast(result.error);
    }
    if (result is SuccessModel) {
      categories = result.data;

      for (var item in categories) {
        item.subcategories = <SubcategoryModel>[];
        var data = await getSubcategory(item.id!);
        item.subcategories = data;
        notifyListeners();
      }
      notifyListeners();
    }
  }

  getSubcategory(String id) async {
    final result = await _categoryService.getSubcategories(id);
    if (result is ErrorModel) {
      showErrorToast(result.error);
    }
    if (result is SuccessModel) {
      return result.data;
    }
  }
}
