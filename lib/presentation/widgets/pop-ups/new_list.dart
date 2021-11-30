import 'package:ajeo/presentation/widgets/cancel_button.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NewList extends StatelessWidget {
  const NewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#998FA2').withOpacity(0.3),
        body: SafeArea(
            child: Center(
          child: Container(
            width: sizeFit(true, 310, context),
            height: sizeFit(false, 300, context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Align(
                    //   alignment: Alignment(0.9, 0.0),
                    //   child: Container(
                    //     width: sizeFit(true, 14, context),
                    //     height: sizeFit(false, 14, context),
                    //     decoration: BoxDecoration(
                    //       shape: BoxShape.circle,
                    //       color: HexColor('#FFFFFF'),
                    //       border: Border.all(
                    //           width: 1.0, color: HexColor('#F22723')),
                    //     ),
                    //     child: Icon(
                    //       Icons.close,
                    //       size: 8.0,
                    //       color: HexColor('#F1302E'),
                    //     ),
                    //   ),
                    // ),
                const     CancelButton(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create a new list',
                            style: TextStyle(
                              color: HexColor('#F22723'),
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              fontFamily: 'Helves',
                            ),
                          ),
                    const      SizedBox(
                            height: 30.0,
                          ),
                          // Container(
                          //     width: sizeFit(true, 200, context),
                          //     height: sizeFit(false, 30, context),
                          //     decoration: BoxDecoration(
                          //       color: HexColor('#F9F9F9'),
                          //       borderRadius: new BorderRadius.circular(26.0),
                          //     ),
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(8.0),
                          //       child: TextFormField(
                          //           decoration: InputDecoration(
                          //         labelText: 'Name list ...',
                          //         labelStyle: TextStyle(
                          //             fontSize: 14,
                          //             fontFamily: 'helves',
                          //             fontStyle: FontStyle.italic),
                          //         border: InputBorder.none,
                          //       )),
                          //     )),
                          TextField(
                            decoration: InputDecoration(
                              hintStyle:  TextStyle(color: Colors.grey[600]),
                              hintText: "Name List...",
                              filled: true,
                              fillColor: const Color.fromRGBO(249, 249, 249, 1),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  borderSide:const BorderSide(
                                    width: 1,
                                    color: Colors.transparent,
                                  )),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.transparent)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.transparent)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  borderSide:const BorderSide(
                                      width: 1, color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  borderSide:const BorderSide(
                                      width: 1, color: Colors.transparent)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                  borderSide:const  BorderSide(
                                      width: 1, color: Colors.transparent)),
                            ),
                          ),
                       const    SizedBox(
                            height: 30.0,
                          ),
                          SizedBox(
                            width: 220,
                            child: Text(
                              'Create wishlists to keep track of item prices, group items together & access frequently shopped items.',
                              style: TextStyle(
                                color: HexColor('#6B6B6B'),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                fontFamily: 'Helves',
                              ),
                            ),
                          ),
                        const   SizedBox(
                            height: 12.0,
                          ),
                       const   SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            child: Center(
                              child: Container(
                                width: sizeFit(true, 150, context),
                                height: sizeFit(false, 40, context),
                                decoration: BoxDecoration(
                                    color: HexColor('#F1302E'),
                                    borderRadius: BorderRadius.circular(26)),
                                child: const Center(
                                  child: Text(
                                    'Create + Add',
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'helves',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              // Get.back();
                              AutoRouter.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        )));
  }
}
