import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> getCurrentLocation() async {
  String _locationMessage = "haha";
  try {
    // Lấy địa chỉ IP hiện tại
    String apiUrl = 'https://api.ipify.org?format=json';
    http.Response response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      String ipAddress = data['ip'];
      print(ipAddress);

      // Sử dụng địa chỉ IP để truy vấn thông tin vị trí
      String locationUrl = 'https://api.ip2location.io/?key=40A94D68E63C0A9AD0BA9170C47C5E65&ip=$ipAddress';

      print(locationUrl);
      http.Response locationResponse;
      try {
        http.Response locationResponse = await http.get(Uri.parse(locationUrl));
        print(locationResponse.toString());
      } catch (e){
        print(e);
      }


      // if (locationResponse.statusCode == 200) {
      //   Map<String, dynamic> locationData = jsonDecode(locationResponse.body);
      //   String city = locationData['city_name'] ?? '';
      //   String country = locationData['country_name'] ?? '';
      //
      //   _locationMessage = 'City: $city\nCountry: $country';
      // } else {
      //   _locationMessage = 'Could not get the location';
      // }
    } else {
      _locationMessage = 'Could not get IP address';
    }
  } catch (e) {
    _locationMessage = 'Could not get the location';
  }
  print(_locationMessage);
}
