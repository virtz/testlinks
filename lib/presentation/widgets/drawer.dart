import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
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
            top: sizeFit(false, 18.0, context),
            left: sizeFit(true, 20.0, context),
          ),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/ajeo.png',
                  scale: 2.4,
                ),
              ),
              SizedBox(
                height: sizeFit(false, 24.0, context),
              ),
              const ListTile(
                title: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Color.fromRGBO(242, 38, 36, 1),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'helves',
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color.fromRGBO(120, 132, 158, 1),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'helves',
                  ),
                ),
              ),
              InkWell(
                child: const ListTile(
                  title: Text(
                    'Subscription',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(120, 132, 158, 1),
                      fontWeight: FontWeight.w700,
                      fontFamily: 'helves',
                    ),
                  ),
                ),
                onTap: () {
                  // AutoRouter.of(context).pop();
                  AutoRouter.of(context).push(const Subscriptions());
                },
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
                  // Get.off(HomeViewNonPremium());
                  // AutoRouter.of(context).pop();
                  AutoRouter.of(context).push(HomeNonPremium());
                },
              ),
              ListTile(
                title: const Text(
                  'WishList',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(120, 120, 120, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.back();
                  AutoRouter.of(context)
                      .push(const DefaultSubscriptionPrompt());
                },
              ),
              ListTile(
                title: const Text(
                  'Discount Codes',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(120, 120, 120, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.back();
                  // AutoRouter.of(context).pop();
                  AutoRouter.of(context)
                      .push(const DefaultSubscriptionPrompt());
                  // AutoRouter.of(context).push(Barcodes());
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
                  // AutoRouter.of(context).pop();
                  AutoRouter.of(context).push(const HelpScreen());
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
                  AutoRouter.of(context).push(Review());
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
                  //   () => SettingsNonPremium(),
                  // );
                  // AutoRouter.of(context).pop();
                  AutoRouter.of(context).push(const SettingsNonPremium());
                },
              ),
              SizedBox(
                height: sizeFit(false, 100, context),
              ),
              ListTile(
                title: const Text(
                  'Log In or Sign Up',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(242, 39, 35, 1),
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
                height: sizeFit(false, 20, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
