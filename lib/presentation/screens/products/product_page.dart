import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/uos.dart';
import 'package:ajeo/core/models/variety.dart';
import 'package:ajeo/presentation/screens/products/dropdown/products.dart';
import 'package:ajeo/presentation/screens/products/product_page_view_model.dart';
// import 'package:ajeo/presentation/screens/products/widgets/wish_list_button.dart';
// import 'package:ajeo/presentation/widgets/drawer.dart';
// import 'package:ajeo/presentation/widgets/pop-ups/review.dart';
import 'package:ajeo/presentation/widgets/search_bar.dart';
// import 'package:ajeo/presentation/widgets/signup_button.dart';
import 'package:ajeo/utils/colors.dart';
import 'package:ajeo/utils/constants.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:ajeo/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class ProductPage extends StatefulWidget {
  final Product? product;
  final String? categoryName;
  final String? subcaegoryName;
  const ProductPage(
      {Key? key, this.product, this.categoryName, this.subcaegoryName})
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
        // h.getCategory();
        if (widget.product!.variety!.isNotEmpty) {
          h.dropdownValue = widget.product!.variety![0];
          if (widget.product!.variety![0].uos!.isNotEmpty) {
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
                          scaffoldKey.currentState!.openDrawer();
                        },
                        child: Container(
                          height: 34.0,
                          width: 34.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(Icons.perm_identity,
                              color: kHomePageIconColor, size: 40),
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
              const SizedBox(
                height: 12.0,
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
                                          fontSize: 12.0.sp,
                                          fontFamily: 'helves'),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Get.back();
                                      AutoRouter.of(context).pop();
                                    },
                                    child: Text(
                                      '/${widget.subcaegoryName}',
                                      style: TextStyle(
                                          color: const Color.fromRGBO(
                                              242, 39, 35, 1.0),
                                          fontSize: 12.0.sp,
                                          fontFamily: 'helves'),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 73.0.h,
                                width: 140.0.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16.0)),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      model.isBusy
                                          ? CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                      Theme.of(context)
                                                          .primaryColor))
                                          : model.currentUosPrice!.minimum_price == null
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
                                                    color:
                                                        const Color(0XFF08F824),
                                                    fontSize: model.determineSize(model.currentUosPrice!.maximum_price!.bitLength),
                                                    fontWeight: FontWeight.w700,
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
                              Container(
                                height: 73.0.h,
                                width: 140.0.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16.0)),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      model.isBusy
                                          ? CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                      Theme.of(context)
                                                          .primaryColor))
                                          : model.currentUosPrice!.maximum_price == null
                                              ? const Text(
                                                  'Please select unit of scale')
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
                                                    fontSize: model.determineSize(model.currentUosPrice!.maximum_price!.bitLength),
                                                    fontWeight: FontWeight.w700,
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
                                      : model.currentUosPrice!.average_price == null
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
                                    items: widget.product!.variety!
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
                          height: 25.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.sp,
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
                            DropdownButtonHideUnderline(
                                child: DropdownButton<Uos>(
                                    value: model.unitOfMeasurement,
                                    icon: const Icon(
                                        Icons.arrow_drop_down_outlined,
                                        size: 20,
                                        color: Color(0xFF292039)),
                                    iconSize: 20,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0.sp,
                                      fontFamily: 'helves',
                                      fontWeight: FontWeight.w600,
                                    ),
                                    onChanged: (value) =>
                                        model.changeUnit(value!),
                                    items: model.dropdownValue!.uos!
                                        .map<DropdownMenuItem<Uos>>(
                                            (Uos value) {
                                      return DropdownMenuItem<Uos>(
                                          value: value,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("$_counter"),
                                              SizedBox(
                                                  width: size.width * 0.01),
                                              Text(value.uosname!),
                                            ],
                                          ));
                                    }).toList())),
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
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 143.h,
                                width: 139.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.white),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 7.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Milk',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                49, 49, 51, 1.0),
                                            fontSize: 32.0.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'helves'),
                                      ),
                                      Text(
                                        'N200',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                8, 248, 36, 1.0),
                                            fontSize: 22.0.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'helves'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 143.h,
                                width: 139.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.white),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 7.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Milk',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                49, 49, 51, 1.0),
                                            fontSize: 32.0.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'helves'),
                                      ),
                                      Text(
                                        'N200',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                8, 248, 36, 1.0),
                                            fontSize: 22.0.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'helves'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
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
                        //           color: Color.fromRGBO(194, 182, 182, 1.0),
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
                        SizedBox(
                          height: 39.h,
                          width: 35.w,
                          child: Image.asset(
                            'assets/images/ajeo.png',
                            width: 100.h,
                            height: 40.w,
                            fit: BoxFit.fill,
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
