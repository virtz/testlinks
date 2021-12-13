import 'dart:io';

import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';
import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/price.dart';
import 'package:ajeo/core/models/uos.dart';
import 'package:ajeo/core/models/variety.dart';
// import 'package:ajeo/core/models/variety.dart';
import 'package:ajeo/core/services/category_service.dart';
import 'package:ajeo/locator.dart';
import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

class ProductPageViewModel extends BaseViewModel {
  final CategoryService _categoryService = locator<CategoryService>();
  PriceModel? currentUosPrice;

  Variety? dropdownValue;

  List<CategoryModel> categories = <CategoryModel>[];
  Uos? unitOfMeasurement;

  changeUnit(Uos value) {
    unitOfMeasurement = value;

    notifyListeners();
    getPriceRange(unitOfMeasurement!.id!);
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

  getPriceRange(String id) async {
    setBusy(true);
    final result = await _categoryService.getUosPrice(id);
    if (result is ErrorModel) {
      setBusy(false);
      showErrorToast(result.error);
    }
    if (result is SuccessModel) {
      setBusy(false);
      currentUosPrice = result.data;
      notifyListeners();
    }
  }

  String formatPrice(int? price) {
    // final currencyFormatter = NumberFormat.currency(name: 'NGN');
    // return currencyFormatter.format(price);
    if (price != null) {
      final currencyFormatter = NumberFormat('#,##0.00', Platform.localeName);
      return currencyFormatter.format(price);
    }
    return "0";
  }
  double determineSize(size){
    switch(size ){
      case 7:
        return 25.0.sp;
      case 9:
        return 20.0.sp;
      case 11:
        return 15.0.sp;
      case 13:
        return 10.5.sp;
      default:
      return  16.0.sp;
    }
  }
}
