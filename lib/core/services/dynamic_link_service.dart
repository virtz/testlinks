

import 'package:ajeo/presentation/screens/products/product_page.dart';
import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class DynamicLinkService {
    late NavigatorState _navigator;
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
  
  Future<void> initDynamicLinks() async {
    final PendingDynamicLinkData? data = await dynamicLinks.getInitialLink();
    final Uri deepLink = data!.link;
    if (deepLink.pathSegments.contains('product')) {
      var queryparams = deepLink.queryParameters;
      // print(queryparams);
      SchedulerBinding.instance!.addPostFrameCallback((_) {
        // AutoRouter.of(context).push();
        _navigator.push(MaterialPageRoute(
            builder: (BuildContext context) => ProductPage(
                productId: queryparams['productId'],
                subcategoryId: queryparams["subcategoryId"],
                isFromSearch: false,
                subcaegoryName: queryparams["subcategoryName"],
                categoryName: queryparams["categoryName"])));
      });
    }

    dynamicLinks.onLink.listen((dynamicLinkData) {
      if (dynamicLinkData.link.pathSegments.contains('product')) {
        var queryparams = dynamicLinkData.link.queryParameters;
        // print(queryparams);
        SchedulerBinding.instance!.addPostFrameCallback((_) {
          // AutoRouter.of(context).push();
          _navigator.push(MaterialPageRoute(
              builder: (BuildContext context) => ProductPage(
                  productId: queryparams['productId'],
                  subcategoryId: queryparams["subcategoryId"],
                  isFromSearch: false,
                  subcaegoryName: queryparams["subcategoryName"],
                  categoryName: queryparams["categoryName"])));
        });
      }
    }).onError((error) {
      showErrorToast(error.message);
    });
  }
}