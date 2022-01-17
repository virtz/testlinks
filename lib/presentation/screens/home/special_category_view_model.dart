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
    setBusy(true);
    final result = await _categoryService.getSpecialCategory();
    if (result is ErrorModel) {
      setBusy(false);
      showErrorToast(result.error);
    }
    setBusy(false);
    spc = result.data;
    notifyListeners();
  }
}
