import 'dart:async';

import 'package:ajeo/presentation/screens/splash_screen/spash_view_model.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
      onModelReady: (h) {
        Timer(const Duration(seconds: 3), () {
          h.navigate(context);
        });
      },
      viewModelBuilder: () => SplashScreenViewModel(),
      builder: (context, model, child) => Scaffold(
        body: GestureDetector(
          onTap: () {
            // Get.offAllNamed(Routes.REGISTER);
            AutoRouter.of(context).push(const Register());
          },
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFeb8662),
                  Color(0xFFFFFFFF),
                ],
              ),
            ),
            child: Center(
              child: Image.asset('assets/images/ajeo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
