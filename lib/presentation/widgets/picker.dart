// ignore_for_file: avoid_types_as_parameter_names

import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Picker extends StatelessWidget {
  final int? childCount;
  final List<String>? pickerList;

  const Picker({Key? key, this.childCount, this.pickerList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.grey[600]!,
          ],
        ),
      ),
      height: sizeFit(false, 264.0, context),
      child: Column(
        children: [
          Container(
            height: 44.0,
            color:const Color.fromRGBO(71, 71, 70, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.back();
                    AutoRouter.of(context).pop();
                  },
                  child:const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'helves',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: CupertinoPicker.builder(
                childCount: childCount,
                itemExtent: 38.0,
                onSelectedItemChanged: (int) {},
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      pickerList![index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontFamily: 'helves',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
