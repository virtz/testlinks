import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';

class Advert extends StatelessWidget {
  const Advert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: sizeFit(false, 20.0, context),
      ),
      child: Container(
        width: double.infinity,
        height: sizeFit(false, 100.0, context),
        color: const Color.fromRGBO(254, 144, 168, 1),
        child: Center(
          child: Text(
            'ADVERT'.toUpperCase(),
            style:const  TextStyle(
              fontSize: 20.0,
              color: Color.fromRGBO(242, 39, 35, 1),
              fontFamily: 'helves',
            ),
          ),
        ),
      ),
    );
  }
}
