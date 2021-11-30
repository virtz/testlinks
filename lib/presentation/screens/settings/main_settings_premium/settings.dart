import 'package:ajeo/presentation/screens/settings/main_settings_premium/list.dart';
import 'package:ajeo/presentation/widgets/drawer1.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const MenuDrawer1(),
        resizeToAvoidBottomInset: true,
        backgroundColor: HexColor('#FAFAFA'),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: InkWell(
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
                            onTap: () {
                              scaffoldKey.currentState!.openDrawer();
                            },
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const SettingsNames(),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              child: Text(
                                'Terms of Service',
                                style: TextStyle(
                                  color: HexColor('#F22723'),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'helves',
                                ),
                              ),
                              onTap: () {
                                // Get.to(() => TermsOfService());
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                  color: HexColor('#F22723'),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'helves',
                                ),
                              ),
                              onTap: () {
                                // Get.to(() => PrivacyPolicy());
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Text(
                                'Contact us',
                                style: TextStyle(
                                  color: HexColor('#F22723'),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'helves',
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            const InkWell(
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  // color: HexColor('#F22723'),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'helves',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 18.0,
                          ),
                          InkWell(
                            child: Container(
                              width: 140,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                color: HexColor('#2BA9E1'),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    // Image.asset(
                                    //   'assets/images/twitter.png',
                                    //   height: 30,
                                    //   width: 30,
                                    // ),
                                    IconButton(
                                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                        icon: const FaIcon(
                                            FontAwesomeIcons.twitter),
                                        color: Colors.white,
                                        iconSize: 28,
                                        onPressed: () {
                                          // print("Pressed");
                                        }),
                                    const Center(
                                      child: Text(
                                        'Twitter',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'helves',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 28.0,
                          ),
                          InkWell(
                            child: Container(
                              width: 150,
                              height: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  gradient: LinearGradient(
                                      stops: const [
                                        0.02,
                                        0.5,
                                        0.9,
                                      ],
                                      begin: FractionalOffset.bottomLeft,
                                      end: FractionalOffset.topRight,
                                      tileMode: TileMode.repeated,
                                      colors: [
                                        HexColor('#F9ED32'),
                                        HexColor('#EE2A7B'),

                                        HexColor('#002AFF'),
                                        // HexColor('#002AFF')
                                      ])),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                        icon:
                                      const      FaIcon(FontAwesomeIcons.instagram),
                                        color: Colors.white,
                                        iconSize: 28,
                                        onPressed: () {
                                          print("Pressed");
                                        }),
                                    const Center(
                                      child: Text(
                                        'Instagram',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'helves',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]))));
  }
}
