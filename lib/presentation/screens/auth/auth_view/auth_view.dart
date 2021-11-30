import 'package:ajeo/presentation/screens/auth/sign_in/sign_in.dart';
import 'package:ajeo/presentation/screens/auth/sign_up/sign_up.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AuthView extends StatefulWidget {
  final int initialIndex;
  const AuthView({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    var authColor = const Color.fromRGBO(242, 39, 35, 1);
    return SafeArea(
        child: DefaultTabController(
            initialIndex: widget.initialIndex,
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                    leading: IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: authColor),
                        onPressed: () {
                          AutoRouter.of(context).pop();
                        }),
                    backgroundColor: Colors.white,
                    bottom: TabBar(
                      indicatorColor: authColor,
                      indicatorWeight: 5.0,
                      labelColor: authColor,
                      labelPadding: const EdgeInsets.only(top: 1.0),
                      unselectedLabelColor: authColor,
                      tabs: const [
                        Tab(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'helves',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    )),
                body: GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: const TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        SignUp(),
                        SignIn(),
                      ],
                    )))));
  }
}
