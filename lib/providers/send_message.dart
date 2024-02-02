import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:profile/services/notification.dart';

import '../utils/constants.dart';

class Message {
  static Future<void> sendMessage({
    required String sender,
    required String email,
    required String message,
  }) async {
    await FirebaseFirestore.instance.collection('messages').add({
      'sender': sender.trim(),
      'email': email.trim(),
      'message': message.trim(),
      'createdAt': FieldValue.serverTimestamp(),
    });
    var ref = await adminRef.once();
    var data = (ref.snapshot.value as Map);

    await Notification.sendMessageNotification(
        sender: sender, message: message, userToken: data['fcmToken']);
  }
}
