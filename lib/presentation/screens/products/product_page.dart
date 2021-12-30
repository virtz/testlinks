import 'package:ajeo/core/models/chart_model/chart_model.dart';
import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/models/uos.dart';
import 'package:ajeo/core/models/variety.dart';
import 'package:ajeo/presentation/screens/auth/help_page-1/tips.dart';
// import 'package:ajeo/presentation/screens/products/dropdown/products.dart';
import 'package:ajeo/presentation/screens/products/product_page_view_model.dart';
// import 'package:ajeo/presentation/widgets/line_chart_widget.dart';
// import 'package:ajeo/presentation/screens/products/widgets/wish_list_button.dart';
// import 'package:ajeo/presentation/widgets/drawer.dart';
// import 'package:ajeo/presentation/widgets/pop-ups/review.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
import 'package:ajeo/routes/app_router.gr.dart';
// import 'package:ajeo/presentation/widgets/signup_button.dart';
// import 'package:ajeo/utils/colors.dart';

import 'package:ajeo/utils/constants.dart';
import 'package:ajeo/utils/custon_page_route.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:ajeo/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
// import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ProductPage extends StatefulWidget {
  final bool isFromSearch;
  final Product? product;
  final String? categoryName;
  final String? subcaegoryName;
  final List<Product>? products;
  const ProductPage(
      {Key? key,
      this.product,
      this.categoryName,
      this.subcaegoryName,
      this.isFromSearch = false,
      this.products})
      : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _counter = 2;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ViewModelBuilder<ProductPageViewModel>.reactive(
      viewModelBuilder: () => ProductPageViewModel(),
      onModelReady: (h) {
        h.getRelatedProducts(widget.products!, widget.product!.productname!);
        // h.getCategory();
        h.sortList(widget.product!.variety!);
        if (widget.product!.variety!.isNotEmpty) {
          h.dropdownValue = widget.product!.variety![0];
          if (widget.product!.variety![0].uos!.isNotEmpty) {
            h.sortUos(widget.product!.variety![0].uos!);
            h.unitOfMeasurement = widget.product!.variety![0].uos![0];
            h.getPriceRange(h.unitOfMeasurement!.id!);
          }
        }
      },
      builder: (context, model, child) => Scaffold(
          key: scaffoldKey,
          // drawer: const MenuDrawer(),
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          body: SafeArea(
              child: Column(
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
                        top: 10.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          // AutoRouter.of(context).pop();
                          Navigator.of(context)
                              .push(CustomPageRoute(child: const Tips()));
                        },
                        child: Container(
                          height: 34.0,
                          width: 34.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset('assets/images/light.png',
                              width: 5.w, height: 5.h),
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
                                capitalize(widget.product!.productname!),
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
                                      print(widget.isFromSearch);

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
                                              color: const Color.fromRGBO(
                                                  242, 39, 35, 1.0),
                                              fontSize: 20.0.sp,
                                              fontFamily: 'helves'),
                                        ),
                                        Text(
                                          '${widget.subcaegoryName}',
                                          style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  242, 39, 35, 1.0),
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
                                                    'Please select unit of scale')
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
                                                      color: Colors.red,
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
                          child: widget.product!.productimage == null
                              ? Image.asset('assets/images/placeholder.jpg',
                                  height: 170.h, width: 170.w)
                              : Image.network(
                                  imagebaseUrl + widget.product!.productimage!,
                                  height: 170.h,
                                  width: 170.w,
                                  fit: BoxFit.fill,
                                ),
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
                              Icon(
                                Icons.import_export,
                                color: const Color.fromRGBO(241, 48, 46, 1.0),
                                size: 32.h,
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
                                    icon: const Icon(
                                      Icons.arrow_drop_down_outlined,
                                      size: 25,
                                      color: Color.fromRGBO(242, 39, 35, 1.0),
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
                                    items: widget.product?.variety!
                                        .map<DropdownMenuItem<Variety>>(
                                            (Variety value) {
                                      return DropdownMenuItem<Variety>(
                                          value: value,
                                          child: SizedBox(
                                              width: size.width * 0.5.w,
                                              child: Center(
                                                child: Text(value.varietyname!,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              )));
                                    }).toList(),
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
                            width: 300.w,
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
                                        icon: const Icon(
                                          Icons.arrow_drop_down_outlined,
                                          size: 25,
                                          color:
                                              Color.fromRGBO(242, 39, 35, 1.0),
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
                                                width: 200.w,
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
                                // Text(
                                //   '$_counter Dozen',
                                //   style: const TextStyle(
                                //       color: Color.fromRGBO(242, 39, 35, 1.0),
                                //       fontSize: 16,
                                //       fontFamily: 'helves'),
                                // ),
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
                        // InkWell(
                        //   onTap: () {
                        //     Get.dialog(Review());
                        //   },
                        //   child: const Center(
                        //     child: Text(
                        //       'Price History',
                        //       style: TextStyle(
                        //           color: Color.fromRGBO(9, 205, 230, 1.0),
                        //           fontSize: 16,
                        //           fontWeight: FontWeight.w700),
                        //     ),
                        //   ),
                        // ),
                        ExpansionTile(
                            iconColor: Colors.red,
                            trailing: const SizedBox.shrink(),
                            title: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Description',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            children: const [
                              ListTile(
                                  title: Text(
                                      """Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham..""",
                                      style: TextStyle(color: Colors.grey)))
                            ]),
                        SizedBox(
                          height: 20.h,
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
                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                    Product prd = model.relatedProducts[index];
                                    return GestureDetector(
                                      onTap: () {
                                        AutoRouter.of(context).push(
                                            ProductRoute(
                                                product: prd,
                                                products: widget.products,
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
                                                      color:
                                                          const Color.fromRGBO(
                                                              49, 49, 51, 1.0),
                                                      fontSize: 16.0.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily: 'helves'),
                                                ),
                                                Text(
                                                  'N200',
                                                  style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
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

                        Center(
                          child: Text(
                            'Price History',
                            style: TextStyle(
                                color: const Color.fromRGBO(9, 205, 230, 1.0),
                                fontSize: 26.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ),

                        SizedBox(
                          height: 20.h,
                        ),
//graph
                        // SizedBox(
                        //   height: 180.0.w,
                        //   width: size.width * 0.88,
                        //   child: LineChartWidget(
                        //     priceCoordinates: const [
                        //       FlSpot(-1, 3),
                        //       FlSpot(1, 2),
                        //       FlSpot(3, 5),
                        //       FlSpot(5, 2.5),
                        //       FlSpot(7, 6),
                        //       FlSpot(9, 7),
                        //       FlSpot(11, 4),
                        //     ],
                        //   ),
                        // ),

                        SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            title: ChartTitle(text: 'Like this'),
                            legend: Legend(isVisible: true),
                            tooltipBehavior: TooltipBehavior(enable: true),
                            series: <ChartSeries<ChartModel, String>>[
                              LineSeries<ChartModel, String>(
                                  dataSource: model.data,
                                  xValueMapper: (ChartModel ct, _) => ct.date,
                                  yValueMapper: (ChartModel ct, _) => ct.price,
                                  name: "Price",
                                  dataLabelSettings:
                                      const DataLabelSettings(isVisible: true))
                            ]),

                        SizedBox(
                            height: 50.h,
                            child: Padding(
                                padding: EdgeInsets.all(8.0.w),
                                child: SfSparkLineChart.custom(
                                  trackball: const SparkChartTrackball(
                                      activationMode:
                                          SparkChartActivationMode.tap),
                                  marker: const SparkChartMarker(
                                      displayMode:
                                          SparkChartMarkerDisplayMode.all),
                                  labelDisplayMode:
                                      SparkChartLabelDisplayMode.all,
                                  xValueMapper: (int index) =>
                                      model.data[index].date,
                                  yValueMapper: (int index) =>
                                      model.data[index].price!.toInt(),
                                  dataCount: 6,
                                ))),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'AJE-O Zones Price Breakdown',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: InkWell(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Bodija Market',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'helves'),
                                    ),
                                    Text(
                                      'N200',
                                      style: TextStyle(
                                          color: const Color.fromRGBO(
                                              8, 248, 36, 1.0),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'helves'),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  // Get.to(() => Stores());
                                },
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Aleshinloye',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                  Text(
                                    'N215',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            110, 192, 100, 1.0),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Mokola Market',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                  Text(
                                    'N225',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            148, 206, 141, 1.0),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Leventis',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                  Text(
                                    'N245',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            245, 91, 88, 1.0),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Ring Road',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                  Text(
                                    'N295',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            245, 91, 88, 1.0),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jericho Market',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                  Text(
                                    'N300',
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            8, 248, 36, 1.0),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'helves'),
                                  ),
                                ],
                              ),
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
                                      color: const Color.fromRGBO(
                                          245, 91, 88, 1.0),
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
          ))),
    );
  }
}
