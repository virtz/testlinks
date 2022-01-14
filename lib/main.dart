// import 'package:ajeo/core/services/dynamic_link_service.dart';
// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:ajeo/core/services/dynamic_link_service.dart';
import 'package:ajeo/locator.dart';
import 'package:ajeo/routes/app_router.gr.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setUpLocator();
  // locator<DynamicLinkService>().initDynamicLinks();
  runApp(
    MyApp(), // Wrap your app
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final _appRouter = AppRouter();
  final DynamicLinkService dms = locator<DynamicLinkService>();
  Timer? timerLink;
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      timerLink = Timer(const Duration(milliseconds: 1000), () {
        dms.initDynamicLinks(context);
      });
    }
    if (state == AppLifecycleState.detached) {
      timerLink = Timer(const Duration(milliseconds: 1000), () async {
        await dms.initDynamicLinks(context);
      });
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    if (timerLink != null) {
      timerLink!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: () => MaterialApp.router(
        // useInheritedMediaQuery: true, // Set to true
        // locale: DevicePreview.locale(context),
        title: 'Ajeo',
        theme: ThemeData(
            // is not restarted.
            primaryColor: const Color(0xFFeb8662),
            accentColor: const Color(0XFF9b2a10)),
        debugShowCheckedModeBanner: false,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        builder: (context, widget) {
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget ?? Container(),
          );
        },
      ),
    );
  }
}
