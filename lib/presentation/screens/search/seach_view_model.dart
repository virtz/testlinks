import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';
import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/services/category_service.dart';
import 'package:ajeo/locator.dart';
import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:stacked/stacked.dart';

class SearchViewModel extends BaseViewModel {
  final CategoryService _categoryService = locator<CategoryService>();

  List<CategoryModel> categories = <CategoryModel>[];
  List<CategoryModel> filteredCategories = <CategoryModel>[];

  List<SubcategoryModel> filtedSubcateggories = <SubcategoryModel>[];
  List<SubcategoryModel> allSubcategories = <SubcategoryModel>[];
  List<Product> filteredProducts = <Product>[];
  List<Product> allProducts = <Product>[];
  // List<SubcategoryModel> subCategories = <SubcategoryModel>[];
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
      sortLists();
    }
  }

  search(String val) {
    filteredCategories = categories
        .where((e) => e.categoryName!.toUpperCase().contains(val.toUpperCase()))
        .toList();
    notifyListeners();

    filtedSubcateggories = allSubcategories
        .where(
            (e) => e.subcategoryName!.toUpperCase().contains(val.toUpperCase()))
        .toList();
    notifyListeners();

    filteredProducts = allProducts
        .where((e) => e.productname!.toUpperCase().contains(val.toUpperCase()))
        .toList();
    notifyListeners();
  }

  sortLists() {
    for (var category in categories) {
      for (var subcategory in category.subcategory!) {
        subcategory.category = category;
        allSubcategories.add(subcategory);
        notifyListeners();
        for (var product in subcategory.product!) {
          product.category = subcategory.category;
          product.subcategory = subcategory;
          allProducts.add(product);
          notifyListeners();
        }
      }
    }
  }
}
