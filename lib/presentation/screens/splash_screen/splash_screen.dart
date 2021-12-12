


import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: GestureDetector(
        onTap: () {
          // Get.offAllNamed(Routes.REGISTER);
           AutoRouter.of(context).push(const Register());
        },
        child:  Container(
          decoration:const  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(242, 12, 3, 0.9),
                Color(0xFFFFFFFF),
              ],
            ),
          ),
          child: Center(
            child: Image.asset('assets/images/ajeo.png'),
          ),
        ),
      ),
    );
  }
}