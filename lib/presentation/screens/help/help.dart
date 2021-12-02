import 'package:ajeo/presentation/widgets/drawer.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const MenuDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*Padding(
                  padding: EdgeInsets.only(left: 18.0, top: 22.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: Color.fromRGBO(240, 39, 35, 1),
                      ),
                    ),
                  ),
                ),*/
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: InkWell(
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Container(
                    width: sizeFit(true, 30, context),
                    height: sizeFit(false, 30, context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.account_circle,
                      color: HexColor('#F22723'),
                      size: 26,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: InkWell(
                      child: const Text(
                        'Subscriptions',
                        style: TextStyle(
                          color: Color.fromRGBO(240, 39, 35, 1),
                          fontSize: 20.0,
                          fontFamily: 'helve',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () {
                        // Get.to(() => Subscription());
                        AutoRouter.of(context).push(const Subscriptions());
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                    ),
                    child: Text(
                      'Help Topic',
                      style: TextStyle(
                        color: Color.fromRGBO(240, 39, 35, 1),
                        fontSize: 20.0,
                        fontFamily: 'helve',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                    ),
                    child: Text(
                      'Help Topic',
                      style: TextStyle(
                        color: Color.fromRGBO(240, 39, 35, 1),
                        fontSize: 20.0,
                        fontFamily: 'helve',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                    ),
                    child: Text(
                      'Help Topic',
                      style: TextStyle(
                        color: Color.fromRGBO(240, 39, 35, 1),
                        fontSize: 20.0,
                        fontFamily: 'helve',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                    ),
                    child: Text(
                      'Help Topic',
                      style: TextStyle(
                        color: Color.fromRGBO(240, 39, 35, 1),
                        fontSize: 20.0,
                        fontFamily: 'helve',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                    ),
                    child: Text(
                      'Help Topic',
                      style: TextStyle(
                        color: Color.fromRGBO(240, 39, 35, 1),
                        fontSize: 20.0,
                        fontFamily: 'helve',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
