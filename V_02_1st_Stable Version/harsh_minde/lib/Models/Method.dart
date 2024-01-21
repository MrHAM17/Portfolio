import 'package:url_launcher/url_launcher.dart';
class Method {
  Future<void> launchURL(String link) async {
    var url = link;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
  Future<void> launchCaller() async {
    const url = "tel:9769984258";
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
  Future<void> launchEmail() async {
    String email = "harshminde1@gmail.com";
    if (await canLaunchUrl(Uri.parse("mailto:$email"))) {
      await launchUrl(Uri.parse("mailto:$email"));
    } else {
      throw 'Could not launch';
    }
  }
}