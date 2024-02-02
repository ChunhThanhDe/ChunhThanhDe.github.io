import 'package:intl/intl.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

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

const String serverToken = 'key=AAAAwDvm_9Q:APA91bEpQxWZzdf1JAA_y1eKbFa1r26V2PO5twPU_RhdpyLEJ12xXdd0QYQYHURPdzh-zVIoe6nC8yE5Eat99WZAlr-R0ucuzTrCs8hDNn3th3wavSpIIcH6Vhah5cp-XmYniTlEDqe8';

DatabaseReference adminRef = FirebaseDatabase.instance.ref().child('admin');
// DatabaseReference projectsRef = adminRef.child('projects');

class AppData {
  static String aboutMe =
      'As a software engineer and UI/UX designer with extensive experience in Flutter, Dart, Firebase, and design, I am passionate about developing innovative and engaging digital experiences that meet the needs of users.\n\nWith a strong foundation in software engineering and design principles, I am adept at crafting high-quality code and intuitive user interfaces. I have experience in designing and developing user-friendly, cross-platform mobile applications using Flutter and Dart.\n\nAs a skilled designer, I can create engaging visuals, intuitive layouts, and an exceptional user experience. I have experience in user research, wireframing, prototyping, and designing user interfaces for mobile apps and web-based applications.\n\nI am highly proficient in Firebase, including Firestore, Realtime Database, and Firebase Cloud Messaging. I have used these technologies to build real-time collaborative applications, messaging systems, and cloud-based applications.\n\nThroughout my career, I have demonstrated strong collaboration skills, working closely with product managers, designers, and other developers to ensure that projects are delivered on time and to a high standard.\n\nIn summary, I am a highly skilled software engineer and UI/UX designer with expertise in Flutter, Dart, Firebase, and design. I am passionate about building innovative and engaging digital experiences that meet the needs of users and strive to deliver high-quality code and intuitive user interfaces for all projects.';

  static void goToLink(String url) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}

String dateFormatter (DateTime date) => DateFormat(DateFormat.YEAR_NUM_MONTH_DAY).format(date);

bool isPhone = false;