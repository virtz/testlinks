import 'package:ajeo/presentation/widgets/social_handles_widget.dart';
import 'package:ajeo/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: SingleChildScrollView(
          child: Column(children: [
            Html(data: aboutUs),
            SizedBox(height: 30.h),
            const SocialHandlesWidget(),
            SizedBox(height: 10.h),
          ]),
        ),
      ),
    );
  }
}
