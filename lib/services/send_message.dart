import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:http/http.dart' as http;

class Message {
  static Future<bool> sendMessage({
    required String sender,
    required String email,
    required String message,
  }) async {
    try {
      String? appCheckToken = await FirebaseAppCheck.instance.getToken();
      if (appCheckToken != null) {
        await FirebaseFirestore.instance.collection('messages').add({
          'sender': sender.trim(),
          'email': email.trim(),
          'message': message.trim(),
          'createdAt': FieldValue.serverTimestamp(),
          // 'token': appCheckToken,
        });
        return true;
      }
    } catch (e) {
      print("get AppCheck error: " + e.toString());
    }
    return false;
  }

  static sendNotification() {
    try {
      FirebaseFirestore.instance.collection('notification').add({
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print("get AppCheck error: " + e.toString());
    }
  }
}

// only use to verify in server
Future<bool> isRecaptchaSuccess(String recaptchaToken) async {
  final secretKey = 'YOUR_RECAPTCHA_SECRET_KEY';
  final url = 'https://www.google.com/recaptcha/api/siteverify';
  final response = await http.post(Uri.parse(url), body: {
    'secret': secretKey,
    'response': recaptchaToken,
  });

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['success'] == true;
  } else {
    return false;
  }
}

downloadCV() {
  // String url = 'https://drive.google.com/uc?id=1egQA4dMBeMb8SQIx4aX6coryumbxsBXX&export=download';
  // AnchorElement anchorElement = AnchorElement(href: url);
  // anchorElement.download = url;
  // anchorElement.click();
}
