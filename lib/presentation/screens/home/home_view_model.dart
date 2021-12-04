// ignore_for_file: prefer_is_empty

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
  bool isEmpty = false;

  getCategory() async {
    setBusy(true);
    final result = await _categoryService.getCategory();
    if (result is ErrorModel) {
      setBusy(false);
      showErrorToast(result.error);
    }
    if (result is SuccessModel) {
      setBusy(false);
      categories = result.data;
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
