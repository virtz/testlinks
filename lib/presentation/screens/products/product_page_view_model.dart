import 'dart:io';

import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';
import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/chart_model/chart_model.dart';
import 'package:ajeo/core/models/price.dart';
import 'package:ajeo/core/models/product.dart';
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
  List<Product> relatedProducts = <Product>[];
  Uos? unitOfMeasurement;

  List<ChartModel> data = [
    ChartModel(
      date: "13th",
      price: 40.0,
    ),
    ChartModel(
      date: "14th",
      price: 20.0,
    ),
    ChartModel(
      date: "15th",
      price: 100.0,
    ),
    ChartModel(
      date: "16th",
      price: 150.0,
    ),
    ChartModel(
      date: "17th",
      price: 230.0,
    ),
    ChartModel(
      date: "18th",
      price: 400.0,
    ),
    ChartModel(
      date: "19th",
      price: 55.0,
    )
  ];

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

  double determineSize(size) {
    switch (size) {
      case 7:
        return 25.0.sp;
      case 9:
        return 20.0.sp;
      case 11:
        return 15.0.sp;
      case 13:
        return 10.5.sp;
      default:
        return 16.0.sp;
    }
  }

  getRelatedProducts(List<Product> products, String productName) {
    relatedProducts = products
        .where((element) => element.productname != productName)
        .toList();
    notifyListeners();
  }

  sortList(List<Variety> value) {
    value.sort((a, b) =>
        a.varietyname!.toUpperCase().compareTo(b.varietyname!.toUpperCase()));
    // print();
  }

  sortUos(List<Uos> value) {
    value.sort(
        (a, b) => a.uosname!.toUpperCase().compareTo(b.uosname!.toUpperCase()));
  }
}
