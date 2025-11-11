import 'package:url_launcher/url_launcher.dart';

import '../constants/app_texts.dart';
class Method {
  Future<void> launchURL(String link) async {
    var url = link;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      // throw 'Could not launch $url';
      throw '${AppTexts.profileLaunchError} $url';
    }
  }
  Future<void> launchCaller() async {
    const url = AppTexts.myTel;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw '${AppTexts.profileLaunchError} $url';
    }
  }
  Future<void> launchEmail() async {
    String email = AppTexts.profileEmail;
    if (await canLaunchUrl(Uri.parse("mailto:$email"))) {
      await launchUrl(Uri.parse("mailto:$email"));
    } else {
      // throw 'Could not launch';
      throw AppTexts.profileLaunchError;

    }
  }
}