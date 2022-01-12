// ignore_for_file: unnecessary_null_comparison

import 'dart:developer';
import 'dart:io';

import 'package:ajeo/core/models/area_model.dart';
import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';
import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/chart_model/chart_model.dart';
import 'package:ajeo/core/models/price.dart';
import 'package:ajeo/core/models/price_option.dart';
import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/product2.dart';
// import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/models/subcategory2.dart';
import 'package:ajeo/core/models/uos.dart';
import 'package:ajeo/core/models/variety.dart';
import 'package:ajeo/core/models/zone.dart';
// import 'package:ajeo/core/models/variety.dart';
import 'package:ajeo/core/services/category_service.dart';
import 'package:ajeo/core/services/product_service.dart';
import 'package:ajeo/core/services/zone_service.dart';
import 'package:ajeo/locator.dart';
import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';

class ProductPageViewModel extends BaseViewModel {
  final CategoryService _categoryService = locator<CategoryService>();
  final ProductService _productService = locator<ProductService>();
  final ZoneService _zoneService = locator<ZoneService>();

  PriceModel? currentUosPrice;
  bool productFetched = false;
  bool creatingLink = false;
  Variety? dropdownValue;
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

  SubcategoryModel2 subcat = SubcategoryModel2();
  Product2 prdt = Product2();
  PriceOption? priceOption;
  List<CategoryModel> categories = <CategoryModel>[];
  List<Product> relatedProducts = <Product>[];
  List<Zone> zones = <Zone>[];

  List<AreaModel> areas = <AreaModel>[];

  Uos? unitOfMeasurement;

  String shortUrl = "";
  String linkMessage = "";

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

  getSubcategory(String? id, productId) async {
    setBusy(true);
    final result = await _productService.getSubcategory(id);
    if (result is ErrorModel) {
      setBusy(false);
      showErrorToast(result.error);
    }
    if (result is SuccessModel) {
      setBusy(false);
      subcat = result.data;
      // print(subcat);
      notifyListeners();
      await getProduct(productId);
    }
  }

  getProduct(String? id) async {
    setBusy(true);
    final result = await _productService.getProduct(id);
    if (result is ErrorModel) {
      setBusy(false);
      showErrorToast(result.error);
    }
    if (result is SuccessModel) {
      setBusy(false);
      prdt = result.data;
      notifyListeners();
      getRelatedProducts(subcat.product!, prdt.productname!, prdt.id!);
      getRelatedProducts(subcat.product!, prdt.productname!, prdt.id!);
      sortList(prdt.variety!);
      if (prdt.variety!.isNotEmpty) {
        dropdownValue = prdt.variety![0];
        notifyListeners();
        if (prdt.variety![0].uos!.isNotEmpty) {
          sortUos(prdt.variety![0].uos!);
          unitOfMeasurement = prdt.variety![0].uos![0];
          notifyListeners();
          getPriceRange(unitOfMeasurement!.id!);
        }
      }
      notifyListeners();
    }
  }

  changeUnit(Uos value) {
    unitOfMeasurement = value;

    notifyListeners();
    getPriceRange(value.id!);
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

  String formatPrice(var price) {
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

  getRelatedProducts(
      List<Product> products, String productName, String productId) {
    relatedProducts = products
        .where((element) =>
            element.productname != productName && element.id != productId)
        .toList();
    // print(relatedProducts);
    notifyListeners();
  }

  sortList(List<Variety> value) {
    value.sort((a, b) =>
        a.varietyname!.toUpperCase().compareTo(b.varietyname!.toUpperCase()));
    // print();
  }

  sortUos(List<Uos?>? value) {
    value!.sort((a, b) =>
        a!.uosname!.toUpperCase().compareTo(b!.uosname!.toUpperCase()));
  }

  initializeDynamicLinks(BuildContext context) async {
    dynamicLinks.onLink.listen((dynamicLinkData) {
      // Navigator.pushNamed(context, dynamicLinkData.link.path);
      var queryparams = dynamicLinkData.link.queryParameters;

      SchedulerBinding.instance!.addPostFrameCallback((_) {
        AutoRouter.of(context).push(ProductRoute(
            productId: queryparams['productId'],
            subcategoryId: queryparams["subcategoryId"],
            isFromSearch: false,
            subcaegoryName: queryparams["subcategoryName"],
            categoryName: queryparams["categoryName"]));
      });
    }).onError((error) {
      showErrorToast(error.message);
    });
  }

//  final bool isFromSearch;
//   final Product? product;
//   final String? categoryName;
//   final String? subcaegoryName;
//   final List<Product>? products;
  Future<void> createDynamicLinks(
    bool short, {
    bool? isFromSearch,
    String? productId,
    String? subcategoryId,
    String? categoryName,
    String? subcategoryName,
    BuildContext? context,
  }) async {
    creatingLink = true;
    notifyListeners();
    final DynamicLinkParameters params = DynamicLinkParameters(
      uriPrefix: 'https://ajeo.page.link',
      link: Uri.parse(
          'https://ajeo.page.link/product?subcategoryId=$subcategoryId&productId=$productId&categoryName$categoryName&subcategoryName=$subcategoryName&isFromSearch=$isFromSearch'),
      androidParameters: const AndroidParameters(
        packageName: 'com.example.ajeo',
        minimumVersion: 0,
      ),
      iosParameters: const IOSParameters(
        bundleId: 'com.example.ajeo',
        minimumVersion: '0',
      ),
    );

    Uri url;
    if (short) {
      final ShortDynamicLink shortLink =
          await dynamicLinks.buildShortLink(params);
      url = shortLink.shortUrl;
      linkMessage = url.toString();
      notifyListeners();
    } else {
      url = await dynamicLinks.buildLink(params);
    }
    creatingLink = false;
    linkMessage = url.toString();

    notifyListeners();
    Clipboard.setData(ClipboardData(text: linkMessage));
    final box = context!.findRenderObject() as RenderBox?;
    await Share.share(linkMessage,
        subject: "subject",
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }

  getZones() async {
    final result = await _zoneService.getZones();
    if (result is ErrorModel) {
      showErrorToast(result.error);
    }
    zones = result.data;
    notifyListeners();
    // for (var zone in zones) {
    //   getPricePerZone(zone.id);
    //   log("from prodcut_view_Model :::: ${priceOption!.toJson()}");
    //   zone.priceOption = priceOption;
    //   notifyListeners();
    // }
    // notifyListeners();
    for (var zone in zones) {
      zone.areas = <AreaModel>[];
      getAreasInZone(zone.id).then((value) {
        zone.areas = value;
        notifyListeners();
        log(zone.areas.toString());
        if (zone.areas == null) {
          zone.areas = <AreaModel>[];
          notifyListeners();
        }
        notifyListeners();
      });
    }
  }

  Future<PriceOption> getPricePerZone(
      String? zoneId, String areaId, String uosId) async {
    final result = await _zoneService.getPricePerZone(zoneId!, areaId, uosId);
    if (result is ErrorModel) {
      // showErrorToast(result.error);
      // return ErrorModel(result.error;)
    }
    if (result is SuccessModel) {
      // priceOption = result.data;

      // notifyListeners();
      print(result.data);
      return result.data;
    }
    return result.data;
  }

  Future<List<AreaModel>> getAreasInZone(String? id) async {
    final result = await _zoneService.getAreasInZone(id);
    if (result is ErrorModel) {
      showErrorToast(result.error);
    }
    if (result is SuccessModel) {
      areas = result.data;
      notifyListeners();
      return result.data;
    }
    return result.data;
  }
}
