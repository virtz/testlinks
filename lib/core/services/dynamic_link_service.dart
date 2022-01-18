// ignore_for_file: unnecessary_null_comparison

import 'dart:io';

import 'package:ajeo/presentation/screens/products/product_page.dart';
import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

class DynamicLinkService {
  // late NavigatorState _navigator;
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

  initDynamicLinks(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    final PendingDynamicLinkData? data = await dynamicLinks.getInitialLink();
    final Uri deepLink = data!.link;
    // print(deepLink);
    if( deepLink!= null) {
      if (data.link.pathSegments.contains('product')) {
        var queryparams = data.link.queryParameters;
        // print(queryparams);
        // SchedulerBinding.instance!.addPostFrameCallback((_) {
        // AutoRouter.of(context).push();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => ProductPage(
                productId: queryparams['productId'],
                subcategoryId: queryparams["subcategoryId"],
                isFromSearch: false,
                subcaegoryName: queryparams["subcategoryName"],
                categoryName: queryparams["categoryName"])));
        // });
      }
    }

    dynamicLinks.onLink.listen((dynamicLinkData) {
      if (dynamicLinkData.link.pathSegments.contains('product')) {
        var queryparams = dynamicLinkData.link.queryParameters;
        // print(queryparams);
        // SchedulerBinding.instance!.addPostFrameCallback((_) {
        // AutoRouter.of(context).push();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => ProductPage(
                productId: queryparams['productId'],
                subcategoryId: queryparams["subcategoryId"],
                isFromSearch: false,
                subcaegoryName: queryparams["subcategoryName"],
                categoryName: queryparams["categoryName"])));
        // });
      }
    }).onError((error) {
      showErrorToast(error.message);
    });
  }

    void initializeAppsflyer() {
    AppsflyerSdk _appsflyerSdk;
    final AppsFlyerOptions options = AppsFlyerOptions(
        afDevKey: "RGXrfEkecbH3P5yByu4wwV",
        appId: Platform.isIOS ? "iosId" : "com.example.ajeo",
        showDebug: true,
        disableAdvertisingIdentifier: true);
    _appsflyerSdk = AppsflyerSdk(options);
    _appsflyerSdk.initSdk(
        registerConversionDataCallback: true,
        registerOnAppOpenAttributionCallback: true,
        registerOnDeepLinkingCallback: true);
    _appsflyerSdk.onDeepLinking((DeepLinkResult dp) {
      switch (dp.status) {
        case Status.FOUND:
          //this where you have your deeplink value
          print("deep link value: ${dp.deepLink?.deepLinkValue}");
          break;
        case Status.NOT_FOUND:
          break;
        case Status.ERROR:
          break;
        case Status.PARSE_ERROR:
          break;
      }
    });
  }
}
