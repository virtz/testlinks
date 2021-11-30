
import 'package:ajeo/utils/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? iconColor;

  const SocialButton({Key? key, 
    this.iconData,
    this.title,
    this.buttonColor,
    this.borderColor,
    this.textColor,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(26.0),
        onTap: () {},
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(
              height: 50.0,
              width: sizeFit(true, 170.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.0),
                border: Border.all(
                  color: borderColor!,
                  width: 2.0,
                ),
              ),
              child: Center(
                child: Text(
                  title!,
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontFamily: 'helves',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: FaIcon(
                iconData,
                color: iconColor ?? Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
