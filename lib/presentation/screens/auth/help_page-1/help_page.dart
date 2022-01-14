// ignore_for_file: avoid_unnecessary_containers

import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/first_walkthrough.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/fourth_walkthrough.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/second_walkthrough.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/third_walkthrough.dart';
import 'package:ajeo/presentation/widgets/social_handles_widget.dart';
import 'package:ajeo/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  final controller = PageController(viewportFraction: 1.2);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

//
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: PageView(
            controller: controller,
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            children: [
              FirstWalkthrough(controller: controller),
              SecondWalkthrough(controller: controller),
              ThirdWalkthrough(controller: controller),
              FourthWalkthrough(controller: controller),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(height: 60.h),
                Text('Frequently Asked Questions (FAQs)',
                    style: TextStyle(
                        fontSize: 17.0.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue)),
                const Divider(color: Colors.grey, thickness: 2.0),
                Html(data: faqs, style: {
                  'ul': Style(
                      fontSize: FontSize.large,
                      color: Colors.black,
                      fontStyle: FontStyle.italic)
                }),
              ])
            ]),
        // SizedBox(
        //     height: 100.h,
        //     child: Column(children: const [Text('This is text')]))
      ),
      bottomSheet: Container(
          color: Colors.white,
          height: 130.h,
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.h),
                    const SocialHandlesWidget(),
                    SizedBox(height: 10.h),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: 10.h),
                  ]),
            ),
          )),
    );
  }
}
