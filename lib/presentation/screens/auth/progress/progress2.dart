

// ignore_for_file: camel_case_types, prefer_final_fields, use_key_in_widget_constructors, unused_field

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class T12SignIn_2 extends StatefulWidget {

    static String tag = '/T12SignIn_2';


  const T12SignIn_2({ Key? key }) : super(key: key);

  @override
  _T12SignIn_2State createState() => _T12SignIn_2State();
}

class _T12SignIn_2State extends State<T12SignIn_2> {

    FocusNode phoneNumberFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode nameFocus = FocusNode();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? phone;
  String ? name;
  String? password;
  bool _autoValidate = false;
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
    return Container(
      
    );
  }

   speed() {
    Timer(
const        Duration(seconds: 4),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => T12SignIn_23()),
            ));
  }
}



class T12SignIn_23 extends StatefulWidget {
  static String tag = '/T12SignIn_2';

  @override
  T12SignIn_23State createState() => T12SignIn_23State();
}

class T12SignIn_23State extends State<T12SignIn_23> {
  FocusNode phoneNumberFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode nameFocus = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? phone;
  String ?name;
  String ? password;
  bool _autoValidate = false;
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
   
    return Scaffold(
      body: InkWell(
        child: Column(
          children: [
         const   SizedBox(
              height: 90,
            ),
       const     Padding(
              padding:  EdgeInsets.only(right: 180),
              child: Text(
                "Signed in!",
                style: TextStyle(color: Colors.red, height: 5, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: FAProgressBar(
                backgroundColor:const Color(0xFFF2CECF),
                size: 4,
                maxValue: 100,
                direction: Axis.horizontal,
                animatedDuration: const Duration(seconds: 1),
                progressColor:const Color(0xFFF22723),
                changeProgressColor:const Color(0xFFF2CECF),
                currentValue: 100,
              ),
            ),
          ],
        ), /*
        onTap: () {
          Get.to(() => HomeViewPremium(), binding: HomeBinding());
        },*/
      ),
    );
  }

  speed() {
    // Timer(
    //  const   Duration(seconds: 2),
    //     () =>
    //       Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => HomeViewPremium(),),
    //     )
    //         // Get.to(() => HomeViewPremium(), binding: HomeBinding())
            
    //         );
  }
}
