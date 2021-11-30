import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  bool isSwitched = false;

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
             const SizedBox(
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
                        Text('Account Settings',
                            style: TextStyle(
                              color: HexColor('#F22723'),
                              fontSize: 20,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w700,
                            )),
                    const    SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 230,
                          child: Text(
                            'Edit your account status',
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
                  const  SizedBox(
                      height: 20,
                    ),
               const     SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Account Status',
                            style: TextStyle(
                              color: HexColor('#000000'),
                              fontSize: 18,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            )),
                    const    SizedBox(
                          height: 8,
                        ),
                        Text('Premium Account',
                            style: TextStyle(
                              color: HexColor('#F22723'),
                              fontSize: 14,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            )),
                     const   SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Subscription',
                                style: TextStyle(
                                  color: HexColor('#707070'),
                                  fontSize: 14,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w600,
                                )),
                            Text('\$1/Monthly',
                                style: TextStyle(
                                  color: HexColor('#F22723'),
                                  fontSize: 14,
                                  fontFamily: 'helves',
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ],
                    ),
               const     SizedBox(
                      height: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Pause Premium Status',
                            style: TextStyle(
                              color: HexColor('#000000'),
                              fontSize: 18,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            )),
                   const     SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Temporarily pause your Premium account status. You will no longer be charged a fee monthly.',
                            style: TextStyle(
                              color: HexColor('#707070'),
                              fontSize: 14,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            )),
                        Text(
                            'You will not be able to access detailed price information unless you are Premium member.',
                            style: TextStyle(
                              color: HexColor('#707070'),
                              fontSize: 14,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            )),
                    const    SizedBox(
                          height: 10,
                        ),
                        Transform.scale(
                          scale: 1.3,
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                // print(isSwitched);
                              });
                            },
                            activeTrackColor: HexColor('#F22723'),
                            activeColor: HexColor('#F22723'),
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
