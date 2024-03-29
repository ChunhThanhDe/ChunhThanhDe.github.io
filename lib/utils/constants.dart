import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

const String name = "ChunhThanhDe";
const String gmail = "chunhthanhde.dev@gmail.com";
const String phone_work = "088 654 9689 / +84 88 654 9689";
const String location = "Hà Nội, Việt Nam";
const String skype = "live:.cid.91d8bf7a568e4a2d";
const String link_linkedin = "https://www.linkedin.com/in/chunhthanhde/";
const String link_github = "https://github.com/chunhthanhde";
const String link_skype = "https://join.skype.com/invite/rdKrZGo3Mdk1";
const String link_mess = "https://www.facebook.com/messages/t/changtrainhaycam.chung";
const String link_facebook = "https://www.facebook.com/Changtrainhaycam.Chung/";

const kTextStyleWhite = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 14,
);
const kNormalTextStyleWhite = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 14,
);

const kMiniTitleTextStyleWhite = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w700,
  color: Colors.white,
  fontSize: 16,
);

const kMiniTitleMusicStyleWhite = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.italic,
  color: Colors.white,
  fontSize: 16,
);

const kMiniTitleTextStyleGreen = TextStyle(
  fontFamily: 'Poppins',
  color: kPrimaryColor,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

const kNormalTextStyleGrey = TextStyle(
  fontFamily: 'Poppins',
  color: Color(0xffB3A595),
  fontSize: 14,
  height: 1.5,
);

const kTitleTextStyle = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 48,
);

class AppData {
  static void goToLink(String url) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}
