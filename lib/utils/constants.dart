import 'package:flutter/material.dart';

import 'package:profile/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

const String name = "ChunhThanhDe";
const String gmail = "chunhthanhde.dev@gmail.com";
const String phone_work = "088 654 9689 / +84 88 654 9689";
const String location = "Hà Nội, Việt Nam";
const String skype = "live:.cid.91d8bf7a568e4a2d";
const String serverToken = 'key=AAAAwDvm_9Q:APA91bEpQxWZzdf1JAA_y1eKbFa1r26V2PO5twPU_RhdpyLEJ12xXdd0QYQYHURPdzh-zVIoe6nC8yE5Eat99WZAlr-R0ucuzTrCs8hDNn3th3wavSpIIcH6Vhah5cp-XmYniTlEDqe8';
const String link_linkedin = "https://www.linkedin.com/in/chunhthanhde/";
const String link_github = "https://github.com/chunhthanhde";
const String link_skype = "https://join.skype.com/invite/rdKrZGo3Mdk1";
const String link_facebook = "https://www.facebook.com/Changtrainhaycam.Chung/";
// const String skype = "live:.cid.91d8bf7a568e4a2d";
// const String serverToken = 'key=AAAAwDvm_9Q:APA91bEpQxWZzdf1JAA_y1eKbFa1r26V2PO5twPU_RhdpyLEJ12xXdd0QYQYHURPdzh-zVIoe6nC8yE5Eat99WZAlr-R0ucuzTrCs8hDNn3th3wavSpIIcH6Vhah5cp-XmYniTlEDqe8';

const kTextStyleWhite = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 14,
);
const kNormalTextStyleWhite = TextStyle(
  color: Colors.white,
  fontSize: 14,
);

const kMiniTitleTextStyleWhite = TextStyle(
  color: Colors.white,
  fontSize: 16,
);

const kMiniTitleTextStylePink = TextStyle(
  color: kPrimaryColor,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

const kNormalTextStyleGrey = TextStyle(
  color: Color(0xffB3A595),
  fontSize: 14,
  height: 1.5,
);

const kTitleTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 48,
);

class AppData {
  static String aboutMe =
      'As a software engineer and UI/UX designer with extensive experience in Flutter, Dart, Firebase, and design, I am passionate about developing innovative and engaging digital experiences that meet the needs of users.\n\nWith a strong foundation in software engineering and design principles, I am adept at crafting high-quality code and intuitive user interfaces. I have experience in designing and developing user-friendly, cross-platform mobile applications using Flutter and Dart.\n\nAs a skilled designer, I can create engaging visuals, intuitive layouts, and an exceptional user experience. I have experience in user research, wireframing, prototyping, and designing user interfaces for mobile apps and web-based applications.\n\nI am highly proficient in Firebase, including Firestore, Realtime Database, and Firebase Cloud Messaging. I have used these technologies to build real-time collaborative applications, messaging systems, and cloud-based applications.\n\nThroughout my career, I have demonstrated strong collaboration skills, working closely with product managers, designers, and other developers to ensure that projects are delivered on time and to a high standard.\n\nIn summary, I am a highly skilled software engineer and UI/UX designer with expertise in Flutter, Dart, Firebase, and design. I am passionate about building innovative and engaging digital experiences that meet the needs of users and strive to deliver high-quality code and intuitive user interfaces for all projects.';

  static void goToLink(String url) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}
