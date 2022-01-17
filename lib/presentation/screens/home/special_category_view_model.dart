import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/special_category.dart';
import 'package:ajeo/core/services/category_service.dart';
import 'package:ajeo/locator.dart';
import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:stacked/stacked.dart';

class SpecialCategoryViewModel extends BaseViewModel {
  List<SpecialCategory> spc = <SpecialCategory>[];
  final CategoryService _categoryService = locator<CategoryService>();

  getSpecialCategory() async {
    final result = await _categoryService.getSpecialCategory();
    if (result is ErrorModel) {
      showErrorToast(result.error);
    }
    spc = result.data;
    notifyListeners();
  }
}
