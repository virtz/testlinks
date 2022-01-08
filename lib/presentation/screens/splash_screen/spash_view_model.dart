


import 'package:ajeo/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashScreenViewModel extends BaseViewModel{


void navigate(BuildContext context){
 AutoRouter.of(context).push(const Register());
}
}