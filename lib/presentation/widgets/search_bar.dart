import 'package:ajeo/routes/app_router.gr.dart';
import 'package:ajeo/utils/colors.dart';
import 'package:ajeo/utils/size_fit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 48.h,
      width: 340.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 7.0.w),
        child: ListTile(
          title: Text(
            'Search for prices in Lagos State',
            style: TextStyle(
              fontFamily: 'helves',
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w200,
            ),
          ),
          leading: Icon(
            Icons.search_outlined,
            color: kHomePageIconColor,
            size: 20.h,
          ),
          trailing: GestureDetector(
            onTap: () {
              Get.bottomSheet(
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.grey[600]!,
                      ],
                    ),
                  ),
                  height: 264.h,
                  child: Column(
                    children: [
                      Container(
                        height: 44.0.h,
                        color: const Color.fromRGBO(71, 71, 70, 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Get.back();
                                AutoRouter.of(context).pop();
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(right: 12),
                                child: Text(
                                  'Done',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: CupertinoPicker.builder(
                            childCount: 6,
                            itemExtent: 38.0,
                            onSelectedItemChanged: (value) {},
                            itemBuilder: (context, index) {
                              return const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'Lagos',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontFamily: 'helves',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                barrierColor: Colors.transparent,
              );
            },
            child: Icon(Icons.location_on_outlined,
                color: kHomePageIconColor, size: 20.h),
          ),
          onTap: () {
            AutoRouter.of(context).push(const Search());
          },
        ),
      ),
    );
  }
}
