import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';
import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/services/category_service.dart';
import 'package:ajeo/locator.dart';
import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:stacked/stacked.dart';

class ProductPageViewModel extends BaseViewModel {
  final CategoryService _categoryService = locator<CategoryService>();

  List<CategoryModel> categories = <CategoryModel>[];
  String? unitOfMeasurement = "Piece(s)";

  changeUnit(value) {
    unitOfMeasurement = value;
    notifyListeners();
  }

  getCategory() async {
    final result = await _categoryService.getCategory();
    if (result is ErrorModel) {
      showErrorToast(result.error);
    }
    if (result is SuccessModel) {
      categories = result.data;
      notifyListeners();
    }
  }
}
