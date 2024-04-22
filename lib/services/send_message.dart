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
          'createdAt': fetchServerTime.toString(),
          // 'token': appCheckToken,
        });
        return true;
      }
    } catch (e) {
      print("get AppCheck error: " + e.toString());
    }
    return false;
  }

  static sendNotification(String ip) {
    try {
      FirebaseFirestore.instance.collection('notification').add({
        'address': ip,
        'createdAt': fetchServerTime.toString(),
      });
    } catch (e) {
      print("error: " + e.toString());
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

Future<DateTime> fetchServerTime() async {
  // Gọi API hoặc truy vấn thời gian từ máy chủ
  // Trong ví dụ này, chúng ta sẽ sử dụng thời gian hiện tại của máy tính làm giả
  final DateTime currentTime = DateTime.now();
  DateTime? serverTime;

  // Kiểm tra múi giờ của máy chủ
  final serverTimeZoneOffset = currentTime.timeZoneOffset;
  if (serverTimeZoneOffset == Duration(hours: 7)) {
    // Máy chủ có múi giờ +7
    serverTime = currentTime;
  } else {
    // Máy chủ không có múi giờ +7, tính toán và đưa thời gian về múi giờ +7
    final adjustedTime = currentTime.add(Duration(hours: 7 - serverTimeZoneOffset.inHours));
    serverTime = adjustedTime;
  }
  return serverTime;
}

downloadCV() {
  // String url = 'https://drive.google.com/uc?id=1egQA4dMBeMb8SQIx4aX6coryumbxsBXX&export=download';
  // AnchorElement anchorElement = AnchorElement(href: url);
  // anchorElement.download = url;
  // anchorElement.click();
}
