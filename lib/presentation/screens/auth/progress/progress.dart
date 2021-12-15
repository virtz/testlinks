// ignore_for_file: camel_case_types, unused_field, prefer_final_fields, unused_local_variable

import 'dart:async';

import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class T12SignUp_2 extends StatefulWidget {
  static String tag = '/T12SignUp_2';

  const T12SignUp_2({Key? key}) : super(key: key);

  @override
  _T12SignUp_2State createState() => _T12SignUp_2State();
}

class _T12SignUp_2State extends State<T12SignUp_2> {
  FocusNode phoneNumberFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode nameFocus = FocusNode();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? phone;
  String? name;
  String? password;
  final bool _autoValidate = false;
  bool passwordVisible = false;
  bool isLoading = false;
  bool isRemember = false;

  @override
  void initState() {
    super.initState();

    speed();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  speed() {
    Timer(
        const Duration(seconds: 8),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const T12SignUp_23()),
            ));
  }
}

class T12SignUp_23 extends StatefulWidget {
  static String tag = '/T12SignUp_2';

  const T12SignUp_23({Key? key}) : super(key: key);

  @override
  T12SignUp_23State createState() => T12SignUp_23State();
}

class T12SignUp_23State extends State<T12SignUp_23> {
  FocusNode phoneNumberFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode nameFocus = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? phone;
  String? name;
  String? password;
  bool _autoValidate = false;
  bool passwordVisible = false;
  bool isLoading = false;
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(40.0), borderSide: BorderSide.none);
    return Scaffold(
      body: InkWell(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 180),
              child: Text(
                "Signed up!",
                style: TextStyle(color: Colors.red, height: 5, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: FAProgressBar(
                backgroundColor: const Color(0xFFF2CECF),
                size: 4,
                maxValue: 100,
                direction: Axis.horizontal,
                animatedDuration: const Duration(seconds: 1),
                progressColor: const Color(0xFFF22723),
                changeProgressColor: const Color(0xFFF2CECF),
                currentValue: 100,
              ),
            ),
          ],
        ),
        onTap: () {
          /*Get.to(
            () => HomeViewPremium(),
            binding: HomeBinding(),
          );*/

          // Get.to(() => ConfirmationPage());
           AutoRouter.of(context).push(const ConfirmationRoute());
        },
      ),
    );
  }
}
