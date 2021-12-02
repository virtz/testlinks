import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountDownClock extends StatefulWidget {
  const CountDownClock({Key? key}) : super(key: key);

  @override
  _CountDownClockState createState() => _CountDownClockState();
}

class _CountDownClockState extends State<CountDownClock> {
  Duration duration = const Duration();
  final countDownDuration = const Duration(days: 23, hours: 4, minutes: 36);
  Timer? timer;
  bool isCountDown = true;
  @override
  void initState() {
    super.initState();
    startTimer();
    reset();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      addTime();
    });
  }

  saveCountValue(Duration duration) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('days', duration.inDays);
    prefs.setInt('hours', duration.inHours);
    prefs.setInt('minutes', duration.inMinutes);
    prefs.setInt('seconds', duration.inSeconds);
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
        height: size.height * 0.3,
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
            const Text("Countdown to Christmas!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                )),
            SizedBox(width: size.width * 0.02),
            const Icon(Icons.watch_later_outlined, color: Colors.white)
          ],
        ),
        SizedBox(height: size.height * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTimeCard(time: days, bottom: 'DAYS', size: size),
            SizedBox(
                width: size.width * 0.07,
                child: const Center(
                  child: Text(':',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      )),
                )),
            buildTimeCard(time: hours, bottom: 'HRS', size: size),
            SizedBox(
                width: size.width * 0.07,
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
                width: size.width * 0.07,
                child: const Center(
                  child: Text(':',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
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
      height: size.height * 0.14,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(time,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 40,
                )),
            Text(bottom,
                style: const TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 20,
                ))
          ],
        ),
      ),
    );
  }
}
