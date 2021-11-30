import 'package:ajeo/presentation/widgets/drawer1.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Barcodes extends StatelessWidget {
  Barcodes({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const MenuDrawer1(),
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Container(
                            width: sizeFit(true, 200, context),
                            height: sizeFit(false, 200, context),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child:
                                // Image.asset('assets/images/qr.png')
                                Icon(
                              Icons.qr_code,
                              color: HexColor('#F22723'),
                              size: 190,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '50% off Smoothies at The Bar',
                      style: TextStyle(
                        color: HexColor('#F22723'),
                        fontFamily: 'helves',
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
             const     Padding(
                    padding:  EdgeInsets.symmetric(vertical: 7),
                    child: Text(
                      'Valid thru ',
                      style: TextStyle(
                        fontFamily: 'helves',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
              const    SizedBox(
                    height: 50,
                  ),
            const      Text(
                    'Legal jargon etc ',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'helves',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
             const     SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: LinearProgressIndicator(
                          backgroundColor: HexColor('#F2CECF'),
                          valueColor:
                              AlwaysStoppedAnimation(HexColor('#F22723')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
        ],
      )),
    );
  }
}
