// import 'package:ajeo/core/models/chart_model/chart_model.dart';
// import 'dart:developer';

import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/models/uos.dart';
import 'package:ajeo/core/models/variety.dart';
import 'package:ajeo/core/models/zone.dart';
import 'package:ajeo/presentation/screens/auth/help_page-1/tips.dart';
// import 'package:ajeo/presentation/screens/products/dropdown/products.dart';
import 'package:ajeo/presentation/screens/products/product_page_view_model.dart';
import 'package:ajeo/presentation/widgets/custom_expansion_tile.dart';
// import 'package:ajeo/presentation/widgets/line_chart_widget.dart';
// import 'package:ajeo/presentation/screens/products/widgets/wish_list_button.dart';
// import 'package:ajeo/presentation/widgets/drawer.dart';
// import 'package:ajeo/presentation/widgets/pop-ups/review.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:ajeo/routes/app_router.gr.dart';
// import 'package:ajeo/presentation/widgets/signup_button.dart';
// import 'package:ajeo/utils/colors.dart';

import 'package:ajeo/utils/constants.dart';
import 'package:ajeo/utils/custon_page_route.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:ajeo/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/scheduler.dart';
// import 'package:flutter/services.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ProductPage extends StatefulWidget {
  final bool isFromSearch;
  final Product? product;
  final String? categoryName;
  final String? productId;
  final String? subcategoryId;
  final String? subcaegoryName;
  final List<Product>? products;
  const ProductPage(
      {Key? key,
      this.product,
      this.categoryName,
      this.subcaegoryName,
      this.isFromSearch = false,
      this.products,
      this.productId,
      this.subcategoryId})
      : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _counter = 2;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late NavigatorState _navigator;
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
  @override
  void didChangeDependencies() {
    _navigator = Navigator.of(context);
    super.didChangeDependencies();
  }

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

  @override
  void initState() {
    super.initState();
    initDynamicLinks();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ViewModelBuilder<ProductPageViewModel>.reactive(
      viewModelBuilder: () => ProductPageViewModel(),
      onModelReady: (h) async {
        await h.getSubcategory(widget.subcategoryId, widget.productId);
        h.getZones();
        // h.getProduct(widget.productId);
        // h.initializeDynamicLinks(context);
        if (h.productFetched) {}
      },
      builder: (context, model, child) => Scaffold(
          key: scaffoldKey,
          // drawer: const MenuDrawer(),
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          body: SafeArea(
              child:
                  //  model.productFetched
                  //     ?
                  Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 7.0,
                  right: 7.0,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 0.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          // AutoRouter.of(context).pop();
                          Navigator.of(context)
                              .push(CustomPageRoute(child: const Tips()));
                        },
                        child: Container(
                          height: 25.0.h,
                          width: 25.0.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset('assets/images/lamp.png',
                              width: 5.w,
                              height: 2.h,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: sizeFit(true, 10.0, context),
                    ),
                    const Expanded(child: SearchBar()),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0.h,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                model.prdt.productname == null
                                    ? ""
                                    : capitalize(model.prdt.productname),
                                style: TextStyle(
                                  color: const Color.fromRGBO(49, 49, 51, 1.0),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25.sp,
                                  fontFamily: 'helves',
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Get.off(CategoryInFocusViewNonPremium());
                                      // AutoRouter.of(context).push( CategoryViewNonPremium())
                                    },
                                    child: Text(
                                      widget.categoryName ?? "",
                                      style: TextStyle(
                                          color: const Color.fromRGBO(
                                              242, 206, 207, 1.0),
                                          fontSize: 13.0.sp,
                                          fontFamily: 'helves'),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Get.back();
                                      // print(widget.isFromSearch);

                                      widget.isFromSearch
                                          ? AutoRouter.of(context).push(
                                              SubCategoryNonPremium(
                                                  isFromSearch: true,
                                                  category:
                                                      widget.product!.category,
                                                  subcategories: const <
                                                      SubcategoryModel>[],
                                                  subactegory: widget
                                                      .product!.subcategory))
                                          : AutoRouter.of(context).pop();
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          ">",
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 20.0.sp,
                                              fontFamily: 'helves'),
                                        ),
                                        Text(
                                          '${widget.subcaegoryName}',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 14.0.sp,
                                              fontFamily: 'helves'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.0.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 73.0.h,
                                width: 155.0.w,
                                // decoration: BoxDecoration(
                                //     color: Colors.white,
                                //     borderRadius: BorderRadius.circular(16.0)),
                                child: Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0.r),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        model.isBusy
                                            ? CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        Theme.of(context)
                                                            .primaryColor))
                                            : model.currentUosPrice == null ||
                                                    model.currentUosPrice!
                                                            .minimum_price ==
                                                        null
                                                ? const Text(
                                                    'Please select unit of sale')
                                                : Text(
                                                    "\u20a6" +
                                                        model.formatPrice(model
                                                            .currentUosPrice!
                                                            .minimum_price),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0XFF08F824),
                                                      fontSize: model
                                                          .determineSize(model
                                                              .currentUosPrice!
                                                              .maximum_price!
                                                              .bitLength),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'helves',
                                                    ),
                                                  ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          'Bodija Market',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'helves',
                                            // fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 73.0.h,
                                width: 155.0.w,
                                // decoration: BoxDecoration(
                                //     color: Colors.white,
                                //     borderRadius: BorderRadius.circular(16.0)),
                                child: Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0.r),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        model.isBusy
                                            ? CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        Theme.of(context)
                                                            .primaryColor))
                                            : model.currentUosPrice == null ||
                                                    model.currentUosPrice!
                                                            .maximum_price ==
                                                        null
                                                ? const Text(
                                                    'Please select unit of sale')
                                                : Text(
                                                    "\u20a6" +
                                                        model.formatPrice(model
                                                            .currentUosPrice!
                                                            .maximum_price),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      fontSize: model
                                                          .determineSize(model
                                                              .currentUosPrice!
                                                              .maximum_price!
                                                              .bitLength),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'helves',
                                                    ),
                                                  ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          'Jericho',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'helves',

                                            // fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 34.0,
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child:
                                //Todo:product image
                                // model.prdt.productimage == null
                                //     ?
                                Image.asset('assets/images/red.png',
                                    height: 170.h, width: 170.w)
                            // : Image.network(
                            //     imagebaseUrl + model.prdt.productimage!,
                            //     height: 170.h,
                            //     width: 170.w,
                            //     fit: BoxFit.fill,
                            //   ),
                            ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  model.isBusy
                                      ? CircularProgressIndicator(
                                          valueColor: AlwaysStoppedAnimation<
                                                  Color>(
                                              Theme.of(context).primaryColor))
                                      : model.currentUosPrice == null ||
                                              model.currentUosPrice!
                                                      .average_price ==
                                                  null
                                          ? const Text(
                                              'Please select unit of scale')
                                          : Text(
                                              "\u20a6" +
                                                  model.formatPrice(model
                                                      .currentUosPrice!
                                                      .average_price),
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0.sp,
                                                  fontFamily: 'helves',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                  Text(
                                    'Average Price',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0.sp,
                                        fontFamily: 'helves',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20.w),
                              GestureDetector(
                                onTap: () async {
                                  model.createDynamicLinks(true,
                                      productId: widget.productId,
                                      isFromSearch: false,
                                      subcategoryId: widget.subcategoryId,
                                      categoryName: widget.categoryName,
                                      context: context,
                                      subcategoryName: widget.subcaegoryName);
                                  // Clipboard.setData(
                                  //     ClipboardData(text: model.linkMessage));
                                },
                                child: model.creatingLink
                                    ? CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Theme.of(context).primaryColor))
                                    : Icon(
                                        Icons.share,
                                        color: Theme.of(context).primaryColor,
                                        size: 32.h,
                                      ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                          child: Container(
                            height: 40.h,
                            // width: 200.0,?
                            width: 260.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // ProductDrop(product: widget.product),
                                  DropdownButton<Variety>(
                                    value: model.dropdownValue,
                                    icon: Icon(
                                      Icons.arrow_drop_down_outlined,
                                      size: 25,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    iconSize: 24,
                                    // elevation: 16,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0.sp,
                                      fontFamily: 'helves',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    onChanged: (newValue) {
                                      setState(() {
                                        model.dropdownValue = newValue!;
                                        model.unitOfMeasurement = null;
                                      });
                                    },
                                    items: model.prdt.variety != null
                                        ? model.prdt.variety!
                                            .map<DropdownMenuItem<Variety>>(
                                                (Variety value) {
                                            return DropdownMenuItem<Variety>(
                                                value: value,
                                                child: SizedBox(
                                                    width: size.width * 0.5.w,
                                                    child: Center(
                                                      child: Text(
                                                          value.varietyname!,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    )));
                                          }).toList()
                                        : null,
                                  ),

                                  // Text(
                                  //   'Free Range Eggs',
                                  //   style: TextStyle(
                                  //     color: Colors.black,
                                  //     fontSize: 16.0,
                                  //     fontFamily: 'helves',
                                  //     fontWeight: FontWeight.w600,
                                  //   ),
                                  // ),
                                  // Icon(
                                  //   Icons.arrow_drop_down_outlined,
                                  //   size: 20,
                                  //   color: Color.fromRGBO(242, 39, 35, 1.0),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: SizedBox(
                            height: 40.h,
                            // width: 200.0,?
                            width: 310.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'helves'),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (_counter > 1) _counter--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 20.h,
                                ),
                                Expanded(
                                  child: DropdownButtonHideUnderline(
                                      child: Center(
                                    child: DropdownButton<Uos>(
                                        value: model.unitOfMeasurement,
                                        icon: Icon(
                                          Icons.arrow_drop_down_outlined,
                                          size: 25,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        iconSize: 20,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0.sp,
                                          fontFamily: 'helves',
                                          fontWeight: FontWeight.w600,
                                        ),
                                        onChanged: (value) =>
                                            model.changeUnit(value!),
                                        items: model.dropdownValue?.uos!
                                            .map<DropdownMenuItem<Uos>>(
                                                (Uos value) {
                                          return DropdownMenuItem<Uos>(
                                              value: value,
                                              child: SizedBox(
                                                width: 190.w,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("$_counter"),
                                                    SizedBox(
                                                        width:
                                                            size.width * 0.01),
                                                    Text(value.uosname!),
                                                  ],
                                                ),
                                              ));
                                        }).toList()),
                                  )),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'helves'),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _counter++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20.h,
                        ),

                        CustomeExpansionTile(
                            iconColor: Theme.of(context).primaryColor,
                            // trailing: const SizedBox.shrink(),
                            trailing: Container(
                                // color: Theme.of(context).primaryColor,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).primaryColor),
                                child: const Icon(Icons.arrow_drop_down,
                                    color: Colors.white)),
                            title: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Description',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            children: [
                              ListTile(
                                  title: Text(
                                      model.prdt.productdescription ?? "",
                                      style:
                                          const TextStyle(color: Colors.grey)))
                            ]),
                        SizedBox(
                          height: 20.h,
                        ),

                        Center(
                          child: Text(
                            'AJE-O Zones Price Breakdown',
                            style: TextStyle(
                                color: const Color.fromRGBO(9, 205, 230, 1.0),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ),

                        SizedBox(
                          height: 20.h,
                        ),
//graph
                        Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            SizedBox(
                              height: 200.h,
                              child: ListView.builder(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: model.zones.length,
                                  itemBuilder: (context, index) {
                                    Zone zone = model.zones[index];
                                    // print(zone.priceOption?.toJson());
                                    // log(zone.priceOption.toString());
                                    // model.getAreasInZone(zone.id).then((value) {
                                    //   zone.areas = value;
                                    // });
                                    if (zone.areas != null &&
                                        zone.areas!.isNotEmpty) {
                                      model
                                          .getPricePerZone(
                                              zone.id,
                                              zone.areas![0].id!,
                                              model.unitOfMeasurement!.id!)
                                          .then((value) {
                                        zone.priceOption = value;
                                      });
                                    }

                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomeExpansionTile(
                                            expandedCrossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            iconColor:
                                                Theme.of(context).primaryColor,
                                            // trailing: const SizedBox.shrink(),
                                            trailing: Container(
                                                // color: Theme.of(context).primaryColor,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                                child: const Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Colors.white)),
                                            title: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  width: 110.w,
                                                  child: Text(
                                                    zone.zonename ?? "",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14.sp,
                                                        // fontWeight: FontWeight.w700,
                                                        fontFamily: 'helves'),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      // "\u20a6${zone.priceOption?.average_zonal_price??"N/A"}",
                                                      zone.priceOption ==
                                                                  null ||
                                                              zone.priceOption!
                                                                      .lowest_zonal_price ==
                                                                  null
                                                          ? 'N/A'
                                                          : "\u20a6${zone.priceOption?.lowest_zonal_price!.toStringAsFixed(0)}",
                                                      style: TextStyle(
                                                          color: const Color
                                                                  .fromRGBO(
                                                              8, 248, 36, 1.0),
                                                          fontSize: 12.sp,
                                                          // fontWeight: FontWeight.w700,
                                                          fontFamily: 'helves'),
                                                    ),
                                                    SizedBox(
                                                        width: 8.w,
                                                        height: 10.h,
                                                        child:
                                                            const VerticalDivider(
                                                          color: Colors.brown,
                                                        )),
                                                    Text(
                                                      zone.priceOption ==
                                                                  null ||
                                                              zone.priceOption!
                                                                      .average_zonal_price ==
                                                                  null
                                                          ? 'N/A'
                                                          : "\u20a6${zone.priceOption?.average_zonal_price!.toStringAsFixed(0)}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12.sp,
                                                          // fontWeight: FontWeight.w700,
                                                          fontFamily: 'helves'),
                                                    ),
                                                    SizedBox(
                                                        width: 8.w,
                                                        height: 10.h,
                                                        child:
                                                            const VerticalDivider(
                                                          color: Colors.brown,
                                                        )),
                                                    Text(
                                                      zone.priceOption ==
                                                                  null ||
                                                              zone.priceOption!
                                                                      .highest_zonal_price ==
                                                                  null
                                                          ? 'N/A'
                                                          : "\u20a6${zone.priceOption?.highest_zonal_price}",
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 12.sp,
                                                          // fontWeight: FontWeight.w700,
                                                          fontFamily: 'helves'),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            children: zone.areas!
                                                .map((e) => Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15.w,
                                                              vertical: 10.w),
                                                      child: Text(
                                                          e.areaname ?? ""),
                                                    )))
                                                .toList()),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.spaceBetween,
                                        //   children: [
                                        //     Text(
                                        //       zone.zonename ?? "",
                                        //       style: TextStyle(
                                        //           color: Colors.black,
                                        //           fontSize: 14.sp,
                                        //           // fontWeight: FontWeight.w700,
                                        //           fontFamily: 'helves'),
                                        //     ),
                                        //     Row(
                                        //       mainAxisAlignment:
                                        //           MainAxisAlignment.spaceAround,
                                        //       children: [
                                        //         Text(
                                        //           // "\u20a6${zone.priceOption?.average_zonal_price??"N/A"}",
                                        //           zone.priceOption == null ||
                                        //                   zone.priceOption!
                                        //                           .average_zonal_price ==
                                        //                       null
                                        //               ? 'N/A'
                                        //               : "\u20a6${zone.priceOption?.average_zonal_price}",
                                        //           style: TextStyle(
                                        //               color: Colors.black,
                                        //               fontSize: 12.sp,
                                        //               // fontWeight: FontWeight.w700,
                                        //               fontFamily: 'helves'),
                                        //         ),
                                        //         SizedBox(
                                        //             width: 8.w,
                                        //             height: 10.h,
                                        //             child:
                                        //                 const VerticalDivider(
                                        //               color: Colors.brown,
                                        //             )),
                                        //         Text(
                                        //           zone.priceOption == null ||
                                        //                   zone.priceOption!
                                        //                           .highest_zonal_price ==
                                        //                       null
                                        //               ? 'N/A'
                                        //               : "\u20a6${zone.priceOption?.highest_zonal_price}",
                                        //           style: TextStyle(
                                        //               color: Colors.redAccent,
                                        //               fontSize: 12.sp,
                                        //               // fontWeight: FontWeight.w700,
                                        //               fontFamily: 'helves'),
                                        //         ),
                                        //         SizedBox(
                                        //             width: 8.w,
                                        //             height: 10.h,
                                        //             child:
                                        //                 const VerticalDivider(
                                        //               color: Colors.brown,
                                        //             )),
                                        //         Text(
                                        //           zone.priceOption == null ||
                                        //                   zone.priceOption!
                                        //                           .lowest_zonal_price ==
                                        //                       null
                                        //               ? 'N/A'
                                        //               : "\u20a6${zone.priceOption?.lowest_zonal_price}",
                                        //           style: TextStyle(
                                        //               color:
                                        //                   const Color.fromRGBO(
                                        //                       8, 248, 36, 1.0),
                                        //               fontSize: 12.sp,
                                        //               // fontWeight: FontWeight.w700,
                                        //               fontFamily: 'helves'),
                                        //         ),
                                        //       ],
                                        //     ),
                                        //   ],
                                        // ),
                                        SizedBox(height: 10.h)
                                      ],
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Center(
                              child: Text(
                                'Related Products',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  height: 200.h,
                                  // width: 139.w,
                                  child: ListView.separated(
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: 20.w);
                                      },
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: model.relatedProducts.length,
                                      itemBuilder: (context, index) {
                                        Product prd =
                                            model.relatedProducts[index];
                                        return GestureDetector(
                                          onTap: () {
                                            AutoRouter.of(context).push(
                                                ProductRoute(
                                                    productId: prd.id,
                                                    subcategoryId:
                                                        widget.subcategoryId,
                                                    subcaegoryName:
                                                        widget.subcaegoryName,
                                                    categoryName:
                                                        widget.categoryName));
                                          },
                                          child: Container(
                                              height: 143.h,
                                              width: 139.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                  color: Colors.white),
                                              child: Padding(
                                                padding: EdgeInsets.all(7.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      prd.productname ?? "",
                                                      style: TextStyle(
                                                          color: const Color
                                                                  .fromRGBO(
                                                              49, 49, 51, 1.0),
                                                          fontSize: 16.0.sp,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily: 'helves'),
                                                    ),
                                                    Text(
                                                      'N200',
                                                      style: TextStyle(
                                                          color: const Color
                                                                  .fromRGBO(
                                                              8, 248, 36, 1.0),
                                                          fontSize: 12.0.sp,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontFamily: 'helves'),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        );
                                      }),
                                )),
                            SizedBox(
                              height: 30.h,
                            ),
                            SizedBox(
                              height: 90.h,
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              'Prices last updated 07/20/2020 ',
                              style: TextStyle(
                                  color: const Color.fromRGBO(49, 49, 51, 1.0),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'helves'),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '52 Week High',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(0, 0, 0, 1.0),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    ' N315 ',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '| Low',
                                    style: TextStyle(
                                      color:
                                          const Color.fromRGBO(49, 49, 51, 1.0),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    ' N185',
                                    style: TextStyle(
                                      color:
                                          const Color.fromRGBO(49, 49, 51, 1.0),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.0.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Volatility ',
                                  style: TextStyle(
                                    color:
                                        const Color.fromRGBO(12, 12, 12, 1.0),
                                    fontSize: 12.sp,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '9.8%',
                                  style: TextStyle(
                                    color:
                                        const Color.fromRGBO(49, 49, 51, 1.0),
                                    fontSize: 12.sp,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // const   Center(
                        //      child: Text(
                        //        'Price History',
                        //        style: TextStyle(
                        //            color: Color.fromRGBO(9, 205, 230, 1.0),
                        //            fontSize: 26,
                        //            fontWeight: FontWeight.w700),
                        //      ),
                        //    ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // Column(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: const [
                        //     Text(
                        //       'Sign up for a Premium account',
                        //       style: TextStyle(
                        //           color: Color.fromRGBO(242, 39, 35, 1.0),
                        //           fontSize: 17,
                        //           fontFamily: 'helves',
                        //           fontWeight: FontWeight.w700),
                        //     ),
                        //     SizedBox(
                        //       height: 30,
                        //     ),
                        //     Text(
                        //       'By upgrading to a premium, you can view details',
                        //       style: TextStyle(
                        //           color: Color.fromRGBO(194, 14
                        //2, 182, 1.0),
                        //           fontSize: 12,
                        //           fontFamily: 'helves',
                        //           fontWeight: FontWeight.w500),
                        //     ),
                        //     SizedBox(
                        //       height: 30,
                        //     ),
                        //     Text(
                        //       'Price History',
                        //       style: TextStyle(
                        //           color: Color.fromRGBO(0, 0, 0, 1.0),
                        //           fontSize: 14,
                        //           fontFamily: 'helves',
                        //           fontWeight: FontWeight.w600),
                        //     ),
                        //     SizedBox(
                        //       height: 30,
                        //     ),
                        //     Text(
                        //       'Price Analysis',
                        //       style: TextStyle(
                        //           color: Color.fromRGBO(0, 0, 0, 1.0),
                        //           fontSize: 14,
                        //           fontFamily: 'helves',
                        //           fontWeight: FontWeight.w600),
                        //     ),
                        //     SizedBox(
                        //       height: 30,
                        //     ),
                        //     Text(
                        //       'Specific Store and Location',
                        //       style: TextStyle(
                        //           color: Color.fromRGBO(0, 0, 0, 1.0),
                        //           fontSize: 14,
                        //           fontFamily: 'helves',
                        //           fontWeight: FontWeight.w600),
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(
                        //   height: 14.0,
                        // ),
                        // const Center(
                        //   child: SignUpButton1(),
                        // ),
                        SizedBox(
                          height: 60.0.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).replace(HomeNonPremium());
                          },
                          child: SizedBox(
                            height: 39.h,
                            width: 35.w,
                            child: Image.asset(
                              'assets/images/ajeo.png',
                              width: 100.h,
                              height: 40.w,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
              // : Center(
              //     child: CircularProgressIndicator(
              //         valueColor: AlwaysStoppedAnimation<Color>(
              //             Theme.of(context).primaryColor))

              //             )
              )),
    );
  }
}
