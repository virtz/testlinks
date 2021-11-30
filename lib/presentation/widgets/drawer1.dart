import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer1 extends StatefulWidget {
  const MenuDrawer1({Key? key}) : super(key: key);

  @override
  _MenuDrawer1State createState() => _MenuDrawer1State();
}

class _MenuDrawer1State extends State<MenuDrawer1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: sizeFit(true, 251.0, context),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(31.0),
          ),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(242, 38, 36, 1),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.15],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: sizeFit(false, 40.0, context),
            left: sizeFit(true, 20.0, context),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      /*maxRadius: 46.0,*/
                      backgroundColor: Colors.transparent,
                      radius: 50,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          'assets/images/face.jpg',
                          fit: BoxFit.cover,
                          height: sizeFit(false, 100, context),
                          width: sizeFit(true, 100, context),
                        ),
                      ),
                    ),
                  ),
                  /*    SizedBox(
                    width: sizeFit(true,77,context),
                  ),*/
                  Padding(
                    padding: const EdgeInsets.only(right: 28.0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/images/ajeo.png',
                          height: sizeFit(false, 35, context),
                          width: sizeFit(true, 39, context),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: sizeFit(false, 2.0, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: sizeFit(true, 20, context),
                ),
                child: const ListTile(
                  title: Text(
                    'Firstname',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color.fromRGBO(242, 38, 36, 1),
                      fontWeight: FontWeight.w700,
                      fontFamily: 'helves',
                    ),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ListTile(
                    title: Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color.fromRGBO(120, 132, 158, 1),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'helves',
                      ),
                    ),
                    trailing: Text(
                      'Lagos, Nigeria',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromRGBO(242, 38, 36, 1),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'helves',
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Subscription',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color.fromRGBO(120, 132, 158, 1),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'helves',
                      ),
                    ),
                    trailing: Text(
                      '\$1/Monthly',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromRGBO(242, 38, 36, 1),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'helves',
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(242, 38, 36, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.back();
                  // Get.off(HomeViewPremium());
                  AutoRouter.of(context).pop();
                  AutoRouter.of(context).push(const HomeRoutePremium());
                },
              ),
              ListTile(
                title: const Text(
                  'WishList',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(242, 38, 36, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.back();
                  // Get.to(() => WishlistView());
                  AutoRouter.of(context).pop();
                  AutoRouter.of(context).push(const WishListView());
                },
              ),
              ListTile(
                title: const Text(
                  'Discount Codes',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(242, 38, 36, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.back();
                  // Get.to(() => Barcode());
                  AutoRouter.of(context).pop();
                  AutoRouter.of(context).push(Barcodes());
                },
              ),
              ListTile(
                title: const Text(
                  'Help',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(242, 38, 36, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.back();
                  // Get.to(
                  //   () => HelpScreenOne(),
                  // );
                },
              ),
              ListTile(
                title: const Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(242, 38, 36, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.back();
                  // Get.to(
                  //   () => Review(),
                  AutoRouter.of(context).push(Review());
                  // );
                },
              ),
              ListTile(
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(242, 38, 36, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.back();
                  // Get.to(
                  //   () => Settings(),
                  AutoRouter.of(context).push(const Settings());
                  // );
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/images/phone.svg',
                  height: sizeFit(false, 31, context),
                  width: sizeFit(true, 31, context),
                ),
              ),
              SizedBox(
                height: sizeFit(false, 10, context),
              ),
              ListTile(
                title: const Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(40, 40, 44, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.offAll(RegisterView());
                  AutoRouter.of(context).push(const Register());
                },
              ),
              SizedBox(
                height: sizeFit(false, 10, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
