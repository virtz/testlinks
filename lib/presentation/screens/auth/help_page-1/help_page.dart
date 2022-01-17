// ignore_for_file: avoid_unnecessary_containers

import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/first_walkthrough.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/fourth_walkthrough.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/second_walkthrough.dart';
import 'package:ajeo/presentation/screens/walkthrough/walkthrough_pages/third_walkthrough.dart';
import 'package:ajeo/presentation/widgets/custom_expansion_tile.dart';
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
    var size = MediaQuery.of(context).size;

//
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: PageView(
            controller: controller,
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            children: [
              FirstWalkthrough(
                controller: controller,
                showButton: false,
              ),
              SecondWalkthrough(
                controller: controller,
                showButton: false,
              ),
              ThirdWalkthrough(
                controller: controller,
                showButton: false,
              ),
              FourthWalkthrough(
                controller: controller,
                showButton: false,
              ),
              SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70.h),
                      Text('Frequently Asked Questions (FAQs)',
                          style: TextStyle(
                              fontSize: 17.0.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue)),
                      const Divider(color: Colors.grey, thickness: 2.0),
                      CustomeExpansionTile(
                          iconColor: Theme.of(context).primaryColor,
                          // trailing: const SizedBox.shrink(),
                          trailing: Container(
                              // color: Theme.of(context).primaryColor,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                              child: const Icon(Icons.arrow_drop_down,
                                  color: Colors.white)),
                          title: Text(
                            'How do share the page ?',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          children: const [
                            ListTile(
                                title: Text(question1,
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                      CustomeExpansionTile(
                          iconColor: Theme.of(context).primaryColor,
                          // trailing: const SizedBox.shrink(),
                          trailing: Container(
                              // color: Theme.of(context).primaryColor,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                              child: const Icon(Icons.arrow_drop_down,
                                  color: Colors.white)),
                          title: Text(
                            'How do I find products ?',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          children: const [
                            ListTile(
                                title: Text(question2,
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                      CustomeExpansionTile(
                          iconColor: Theme.of(context).primaryColor,
                          // trailing: const SizedBox.shrink(),
                          trailing: Container(
                              // color: Theme.of(context).primaryColor,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                              child: const Icon(Icons.arrow_drop_down,
                                  color: Colors.white)),
                          title: Text(
                            'How do I find a subcategory without navigating through the categories ?',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          children: const [
                            ListTile(
                                title: Text(question3,
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                      CustomeExpansionTile(
                          iconColor: Theme.of(context).primaryColor,
                          // trailing: const SizedBox.shrink(),
                          trailing: Container(
                              // color: Theme.of(context).primaryColor,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                              child: const Icon(Icons.arrow_drop_down,
                                  color: Colors.white)),
                          title: Text(
                            'Can I subscribe to a newsletter ?',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          children: const [
                            ListTile(
                                title: Text(question4,
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                      CustomeExpansionTile(
                          iconColor: Theme.of(context).primaryColor,
                          // trailing: const SizedBox.shrink(),
                          trailing: Container(
                              // color: Theme.of(context).primaryColor,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                              child: const Icon(Icons.arrow_drop_down,
                                  color: Colors.white)),
                          title: Text(
                            'How often are the prices updated ?',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          children: const [
                            ListTile(
                                title: Text(question5,
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                      CustomeExpansionTile(
                          iconColor: Theme.of(context).primaryColor,
                          // trailing: const SizedBox.shrink(),
                          trailing: Container(
                              // color: Theme.of(context).primaryColor,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                              child: const Icon(Icons.arrow_drop_down,
                                  color: Colors.white)),
                          title: Text(
                            'How do I contact you ?',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          children: const [
                            ListTile(
                                title: Text(question6,
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                      CustomeExpansionTile(
                          iconColor: Theme.of(context).primaryColor,
                          // trailing: const SizedBox.shrink(),
                          trailing: Container(
                              // color: Theme.of(context).primaryColor,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor),
                              child: const Icon(Icons.arrow_drop_down,
                                  color: Colors.white)),
                          title: Text(
                            'How do I give feedback ?',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          children: const [
                            ListTile(
                                title: Text(question7,
                                    style: TextStyle(color: Colors.grey)))
                          ]),
                      // SizedBox(height: 50.h),
                      SizedBox(
                          // color: Colors.white,
                          height: 200.h,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 15.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // SizedBox(height: 10.h),
                                    const SocialHandlesWidget(),
                                    SizedBox(height: 10.h),
                                    const Text(
                                      'Rate Us',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 17.5,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'helves'),
                                    ),
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(height: 6.h),
                                  ]),
                            ),
                          )),
                    ]),
              )
            ]),
        // SizedBox(
        //     height: 100.h,
        //     child: Column(children: const [Text('This is text')]))
      ),
      // bottomSheet: Container(
      //     color: Colors.white,
      //     height: 150.h,
      //     child: Center(
      //       child: Padding(
      //         padding:
      //             const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      //         child: Column(crossAxisAlignment: CrossAxisAlignment.center,
      //             // mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               SizedBox(height: 10.h),
      //               const SocialHandlesWidget(),
      //               SizedBox(height: 10.h),
      //               RatingBar.builder(
      //                 initialRating: 3,
      //                 minRating: 1,
      //                 direction: Axis.horizontal,
      //                 allowHalfRating: true,
      //                 itemCount: 5,
      //                 itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      //                 itemBuilder: (context, _) => const Icon(
      //                   Icons.star,
      //                   color: Colors.amber,
      //                 ),
      //                 onRatingUpdate: (rating) {
      //                   print(rating);
      //                 },
      //               ),
      //               SizedBox(height: 6.h),
      //             ]),
      //       ),
      //     )),
    );
  }
}
