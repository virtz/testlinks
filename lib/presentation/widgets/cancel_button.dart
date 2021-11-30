import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:const Alignment(0.9, 0.0),
      child: InkWell(
        onTap: () {
          // Get.back();
          AutoRouter.of(context).pop();
        },
        child: Container(
          width: sizeFit(true, 17, context),
          height: sizeFit(false, 17, context),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: HexColor('#FFFFFF'),
            border: Border.all(width: 1.5, color: HexColor('#F22723')),
          ),
          child: Icon(
            Icons.close,
            size: 10.0,
            color: HexColor('#F1302E'),
          ),
        ),
      ),
    );
  }
}
