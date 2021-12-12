// import 'package:ajeo/presentation/screens/auth/auth_view/auth_view.dart';
import 'package:ajeo/presentation/widgets/blinking_text_animation.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(242, 12, 3, 0.9),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(right: 20.0, top: 20),
              //   child: Align(
              //     alignment: Alignment.topRight,
              //     child: InkWell(
              //       onTap: () {
              //         // Get.to(() => HelpScreen());
              //       },
              //       child: const Text(
              //         'HELP',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 16.0,
              //           fontFamily: 'helves',
              //           fontWeight: FontWeight.w500,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 60.h,
              ),
              Image.asset('assets/images/ajeo.png'),
              SizedBox(
                height: 40.h,
              ),
              // const Text(
              //   'Sign up or Login to\n manage your Account',
              //   style: TextStyle(
              //     color: Color.fromRGBO(111, 111, 111, 1),
              //     fontSize: 14.0,
              //     fontFamily: 'helves',
              //     fontWeight: FontWeight.w600,
              //   ),
              //   textAlign: TextAlign.center,
              // ),

              // Material(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(21.0),
              //   ),
              //   color: const Color.fromRGBO(240, 90, 36, 1),
              //   child: InkWell(
              //     onTap: () {
              //       // Get.to(() => AuthView(0));
              //       AutoRouter.of(context).push(AuthView(initialIndex: 0));
              //     },
              //     borderRadius: BorderRadius.circular(21.0),
              //     child: Container(
              //       height: size.height * 0.09,
              //       width: 145.0,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(21.0),
              //       ),
              //       child: const Center(
              //         child: Text(
              //           'Sign Up',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20.0,
              //             fontFamily: 'helves',
              //             fontWeight: FontWeight.w700,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 30.0.h,
              ),
              // const Text(
              //   'Already registered? Login',
              //   style: TextStyle(
              //     color: Color.fromRGBO(111, 111, 111, 1),
              //     fontSize: 12.0,
              //     fontFamily: 'helves',
              //     fontWeight: FontWeight.w600,
              //   ),
              //   textAlign: TextAlign.center,
              // ),

              // InkWell(
              //   onTap: () {
              //     // Get.to(() => AuthView(1));

              //     AutoRouter.of(context).push(AuthView(initialIndex: 1));
              //   },
              //   child: const Text(
              //     'Login',
              //     style: TextStyle(
              //       color: Color.fromRGBO(240, 90, 36, 1),
              //       fontSize: 18.0,
              //       fontFamily: 'helves',
              //       fontWeight: FontWeight.w800,
              //       decoration: TextDecoration.underline,
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 76.0,
              // ),
              InkWell(
                onTap: () {
                  // Get.to(
                  //   () => HomeViewNonPremium(),
                  //   /*binding: HomeBinding(),*/
                  // );
                  AutoRouter.of(context).push(const HomeNonPremium());
                },
                child: Column(
                  children: [
                    SizedBox(
                        height: 35.h,
                        width: 300.w,
                        child: Lottie.asset(
                          'assets/images/arrow_next.json',
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    const BlinkingTextAnimation(text: 'Click Here'),
                  ],
                ),
              ),

              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  // Get.to(() => HelpScreen());
                },
                child: Text(
                  'HELP',
                  style: TextStyle(
                    color: const Color.fromRGBO(240, 90, 36, 1),
                    fontSize: 20.0.sp,
                    fontFamily: 'helves',
                    fontWeight: FontWeight.w600,
                    // decoration: TextDecoration.underline,
                  ),
                ),
              ),

              SizedBox(
                height: 15.h,
              ),

              Text(
                'ABOUT US',
                style: TextStyle(
                  color: const Color.fromRGBO(240, 90, 36, 1),
                  fontSize: 20.0.sp,
                  fontFamily: 'helves',
                  fontWeight: FontWeight.w600,
                  // decoration: TextDecoration.underline,
                ),
              ),

              SizedBox(
                height: 30.0.h,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
