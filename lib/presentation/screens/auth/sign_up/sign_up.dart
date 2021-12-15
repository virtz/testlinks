import 'package:ajeo/presentation/screens/auth/local_widgets/social_button.dart';
import 'package:ajeo/presentation/screens/auth/local_widgets/textfield.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(
          left: sizeFit(true, 12.0, context),
          right: sizeFit(true, 12.0, context),
          top: 20.0,
        ),
        child:Column(
           crossAxisAlignment: CrossAxisAlignment.start,  
           children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    SocialButton(
                      title: 'Facebook',
                      iconData: FontAwesomeIcons.facebook,
                      borderColor:  Color.fromRGBO(59, 89, 152, 1),
                      buttonColor:  Color.fromRGBO(59, 89, 152, 1),
                    ),
                    SocialButton(
                      title: 'Twitter',
                      iconData: FontAwesomeIcons.twitter,
                      borderColor:  Color.fromRGBO(43, 169, 225, 1),
                      buttonColor:  Color.fromRGBO(43, 169, 225, 1),
                    ),
                  ],
                ),

           const        SizedBox(
                  height: 18.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const[
                    SocialButton(
                      title: 'Apple',
                      iconData: FontAwesomeIcons.apple,
                      borderColor: Colors.black,
                      buttonColor: Colors.black,
                    ),
                    SocialButton(
                      title: 'Google',
                      iconData: FontAwesomeIcons.google,
                      borderColor: Colors.black,
                      buttonColor: Colors.white,
                      iconColor: Colors.black,
                      textColor: Colors.black,
                    ),
                  ],
                ),

                 Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children:const [
                      Expanded(
                        child: Divider(
                          color: Color.fromRGBO(242, 39, 35, 1),
                          thickness: 2,
                        ),
                      ),
                      Text(
                        '  OR  ',
                        style: TextStyle(
                          fontFamily: 'helves',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(242, 39, 35, 1),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color.fromRGBO(242, 39, 35, 1),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),


           const      SizedBox(
                  height: 10.0,
                ),
                 Row(
                  children: const [
                    Expanded(
                      child: TextFieldContainer(
                        hintText: 'First Name',
                        withAsterisk: false,
                      ),
                    ),
                    Expanded(
                      child: TextFieldContainer(
                        hintText: 'Last Name',
                        withAsterisk: false,
                      ),
                    ),
                  ],
                ),
           const      SizedBox(
                  height: 10.0,
                ),
         const        TextFieldContainer(
                  hintText: 'Email Address', withAsterisk: null,
                ),
          const       SizedBox(
                  height: 10.0,
                ),
        const         TextFieldContainer(
                  hintText: 'Password',
                  obscure: true, withAsterisk: null,
                ),
            const    SizedBox(
                  height: 20.0,
                ),
          const      Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(
                    'At least 8 characters, 1 uppercase letter, 1 number & 1 Symbol',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
          const      SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'By signing up, yo accept the ',
                      style:const TextStyle(
                        fontFamily: 'helves',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms of Service',
                          style:const TextStyle(
                            fontFamily: 'helves',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(242, 39, 35, 1),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Get.to(() => TermsOfService());
                            
                            },
                        ),
                      const  TextSpan(
                          text: ' & ',
                          style: TextStyle(
                            fontFamily: 'helves',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style:const TextStyle(
                            fontFamily: 'helves',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(242, 39, 35, 1),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Get.to(() => PrivacyPolicy());
                              
                            },
                        ),
                      ],
                    ),
                  ),
                ),
            const    SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21.0),
                    ),
                    color:const Color.fromRGBO(240, 90, 36, 1),
                    child: InkWell(
                      onTap: () {
                        /* Get.to(T12SignUp_2());*/
                        // Get.to(CompleteAccountView());
                         AutoRouter.of(context).push(const CompleteAccount());
                      },
                      borderRadius: BorderRadius.circular(21.0),
                      child: Container(
                        height: 45.0,
                        width: 145.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                        child:const Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'helve',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
           ],
        )
        
        
        ))));
  }
}
