import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:profile/services/send_message.dart';

Future<void> getCurrentLocation() async {
  try {
    String apiUrl = 'https://api.ipify.org?format=json';
    http.Response response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      String ipAddress = data['ip'];
      print("ipAddress: " + ipAddress);
      Message.sendNotification(ipAddress);
    }
  } catch (e) {
    print("error: " + e.toString());
  }
}
