import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SignUpButton1 extends StatelessWidget {
  const SignUpButton1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(26),
      color: const Color.fromRGBO(242, 39, 35, 1.0),
      child: InkWell(
        child: Container(
          height: 54,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
          ),
          child: const Center(
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1.0),
                fontSize: 17.0,
                fontFamily: 'helves',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        onTap: () {
          // Get.to(() => SignUpView());
          AutoRouter.of(context).push(const SignUp());
        },
      ),
    );
  }
}
