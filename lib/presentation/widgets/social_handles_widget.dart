import 'package:ajeo/presentation/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialHandlesWidget extends StatefulWidget {
  const SocialHandlesWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SocialHandlesWidget> createState() => _SocialHandlesWidgetState();
}

class _SocialHandlesWidgetState extends State<SocialHandlesWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
            onTap: () {
              _launchInBrowser("https://twitter.com/officialajeo?s=11");
            },
            child: Image.asset('assets/images/twitter.png', height: 30.h)),
        GestureDetector(
            onTap: () {
              _launchInBrowser(
                  "https://instagram.com/officialajeo?utm_medium=copy_link");
            },
            child: Image.asset('assets/images/instagram.png', height: 30.h)),
        GestureDetector(
            onTap: () {},
            child: Image.asset('assets/images/whatsapp.png', height: 30.h)),
        GestureDetector(
            onTap: () {
              _launchInBrowser("https://web.facebook.com/officialajeo");
            },
            child: Image.asset('assets/images/meta.png', height: 30.h))
      ],
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      ;
      showErrorToast('Could not launch $url');
    }
  }
}
