import 'package:ajeo/presentation/widgets/pop-ups/review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

final settingListBold = [
  'Profile Settings',
  'Billing Information',
  'App Settings',
  'Account Settings'
];
final settingListNorm = [
  'Edit your personal information, change location or change password',
  'Edit your Billing Information to handle transactions',
  'Edit your Notifications and App settings',
  'Edit your account status'
];

class SettingsNames extends StatelessWidget {
  const SettingsNames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Text(
                  'Profile Settings',
                  style: TextStyle(
                    color: HexColor('#787878'),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  Get.dialog(Review());
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 230,
                child: Text(
                  'Edit your personal information, change location or change password',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Text(
                  'Billing Information',
                  style: TextStyle(
                    color: HexColor('#787878'),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  Get.dialog(Review());
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 230,
                child: Text(
                  'Edit your Billing Information to handle transactions',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Text(
                  'App Settings',
                  style: TextStyle(
                    color: HexColor('#F22723'),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                /*  onTap: () {
                  Get.to(() => AppSettings());
                },*/
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 230,
                child: Text(
                  'Edit your Notifications and App settings',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Text(
                  'Account Settings',
                  style: TextStyle(
                    color: HexColor('#787878'),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
                onTap: () {
                  // Get.dialog(Review());
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 230,
                child: Text(
                  'Edit your account status',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'helves',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
