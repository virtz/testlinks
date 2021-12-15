import 'package:ajeo/presentation/screens/auth/local_widgets/social_button.dart';
import 'package:ajeo/presentation/screens/auth/local_widgets/textfield.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const[
                            SocialButton(
                              title: 'Facebook',
                              iconData: FontAwesomeIcons.facebook,
                              borderColor:  Color.fromRGBO(59, 89, 152, 1),
                              buttonColor:  Color.fromRGBO(59, 89, 152, 1),
                            ),
                            SocialButton(
                              title: 'Twitter',
                              iconData: FontAwesomeIcons.twitter,
                              borderColor:
                                   Color.fromRGBO(43, 169, 225, 1),
                              buttonColor:
                                   Color.fromRGBO(43, 169, 225, 1),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
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
                            children: const [
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
                        const SizedBox(
                          height: 10.0,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const TextFieldContainer(
                          hintText: 'Email',
                          withAsterisk: false,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const TextFieldContainer(
                          hintText: 'Password',
                          obscure: true,
                          withAsterisk: false,
                        ),
                        SizedBox(
                          height: sizeFit(false, 110.0, context),
                        ),
                        Center(
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21.0),
                            ),
                            color: const Color.fromRGBO(190, 182, 182, 1),
                            child: InkWell(
                              onTap: () {
                                // Get.to(
                                //   T12SignIn_2(),
                                // );
                                   AutoRouter.of(context).push(const T12SignIn_2());
                              },
                              borderRadius: BorderRadius.circular(21.0),
                              child: Container(
                                height: 45.0,
                                width: 165.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21.0),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Log In',
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
                        const SizedBox(
                          height: 30.0,
                        ),
                        Center(
                          child: InkWell(
                            child: const Text(
                              'Can\'t log in?',
                              style: TextStyle(
                                fontFamily: 'helves',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(242, 39, 35, 1),
                              ),
                            ),
                            onTap: () {
                              // Get.to(AccountRecovery());
                            },
                          ),
                        )
                      ],
                    )))));
  }
}
