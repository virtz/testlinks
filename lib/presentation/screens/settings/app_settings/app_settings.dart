import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FAFAFA'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: InkWell(
                    child: Container(
                      width: sizeFit(true, 34, context),
                      height: sizeFit(false, 34, context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: HexColor('#F22723'),
                        size: 26,
                      ),
                    ),
                    onTap: () {
                      // Get.back();
                      AutoRouter.of(context).pop();
                    },
                  ),
                ),
              ),
         const     SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('App Settings',
                            style: TextStyle(
                              color: HexColor('#F22723'),
                              fontSize: 20,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w700,
                            )),
                   const      SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: sizeFit(true, 260, context),
                          child: Text(
                            'Edit your Notifications and App settings',
                            style: TextStyle(
                              color: HexColor('#6B6B6B'),
                              fontSize: 12,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
             const        SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Notify me about Weekly Price Updates',
                          style: TextStyle(
                            color: HexColor('#000000'),
                            fontSize: 13,
                            fontFamily: 'helves',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Transform.scale(
                          scale: 1.3,
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeTrackColor: HexColor('#F22723'),
                            activeColor: HexColor('#FFFFFF'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
