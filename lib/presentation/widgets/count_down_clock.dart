import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class CountDownClock extends StatefulWidget {
  const CountDownClock({Key? key}) : super(key: key);

  @override
  _CountDownClockState createState() => _CountDownClockState();
}

class _CountDownClockState extends State<CountDownClock> {
  Duration duration = const Duration();
  var countDownDuration = const Duration(days: 23, hours: 4, minutes: 36);
  Duration? difference;
  Timer? timer;
  bool isCountDown = true;
  @override
  void initState() {
    super.initState();
    // difference = DateTime.now().difference(DateTime(2020, 12, 25));
    difference = DateTime(2021, 12, 25).difference(DateTime.now());
    countDownDuration = Duration(
        days: difference!.inDays.remainder(31),
        hours: difference!.inHours.remainder(24),
        minutes: difference!.inMinutes.remainder(60),
        seconds: difference!.inSeconds.remainder(60));
    startTimer();
    reset();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      addTime();
    });
  }

  reset() {
    if (isCountDown) {
      setState(() => duration = countDownDuration);
    } else {
      setState(() => duration = const Duration());
    }
  }

  addTime() {
    final addSeconds = isCountDown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      }
      duration = Duration(seconds: seconds);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        color: Colors.red,
        height: 200.h,
        width: size.width,
        child: Center(child: buildTime(size)));
  }

  Widget buildTime(size) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final days = twoDigits(duration.inDays);
    final hours = twoDigits(duration.inHours.remainder(24));
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    // return Text('$minutes :$seconds', style: const TextStyle(fontSize: 80));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("Countdown to Christmas!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24.sp,
                )),
            SizedBox(width: 10.w),
            const Icon(Icons.watch_later_outlined, color: Colors.white)
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTimeCard(time: days, bottom: 'DAYS', size: size),
            SizedBox(
                width: 20.w,
                child:  Center(
                  child: Text(':',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24.sp,
                      )),
                )),
            buildTimeCard(time: hours, bottom: 'HRS', size: size),
            SizedBox(
                width: 20.w,
                child: const Center(
                  child: Text(':',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      )),
                )),
            buildTimeCard(time: minutes, bottom: 'MINS', size: size),
            SizedBox(
               width: 20.w,
                child: Center(
                  child: Text(':',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24.sp,
                      )),
                )),
            buildTimeCard(time: seconds, bottom: 'SECS', size: size),
          ],
        ),
      ],
    );
  }

  Widget buildTimeCard({required String time, required String bottom, size}) {
    return Container(
      height: 85.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding:  EdgeInsets.all(7.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(time,
                style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 38.sp,
                )),
            Text(bottom,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 18.sp,
                ))
          ],
        ),
      ),
    );
  }
}
