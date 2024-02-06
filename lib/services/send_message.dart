
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';


class Message {
  static Future<void> sendMessage({
    required String sender,
    required String email,
    required String message,
  }) async {


    await FirebaseFirestore.instance.collection('messages')..add({
      'sender': sender.trim(),
      'email': email.trim(),
      'message': message.trim(),
      'createdAt': FieldValue.serverTimestamp(),
    });
  }
}

  downloadCV() {
    String url = 'https://drive.google.com/uc?id=1egQA4dMBeMb8SQIx4aX6coryumbxsBXX&export=download';
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }

