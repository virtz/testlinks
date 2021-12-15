import 'package:ajeo/locator.dart';
import 'package:ajeo/routes/app_router.gr.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:device_preview/device_preview.dart';

void main() async {
  setUpLocator();
  runApp(
    MyApp(), // Wrap your app
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    designSize:const Size(375,667),
      builder:()=> MaterialApp.router(
        // useInheritedMediaQuery: true, // Set to true
        // locale: DevicePreview.locale(context),
        title: 'Ajeo',
        theme: ThemeData(
          // is not restarted.
          primaryColor: const Color(0xFFf22723),
        ),
        debugShowCheckedModeBanner: false,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        builder: (context,widget){
         return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
      ),
      
    );
  }
}
