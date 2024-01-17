import 'package:url_launcher/url_launcher.dart';

// class Method {
//
//   launchURL(String link) async {
//   var url = link;
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
//
//  launchCaller() async {
//     const url = "tel:9769984258";
//     if (await canLaunch(url)) {
//        await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
// }
//
// launchEmail() async {
//       if (await canLaunch("mailto:harshminde1@gmail.com")) {
//         await launch("mailto:harshminde1@gmail.com");
//       } else {
//         throw 'Could not launch';
//       }
//     }
//
// }





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
