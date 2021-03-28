import 'dart:convert';

import 'package:http/http.dart' as http;

class ServerCalls {
  static String url = 'https://c6046b76d246.ngrok.io';

  static Future<String?> setupSession() async {
    http.Response response = await http.post(Uri.parse(url + '/api/session/'));
    Map responseData = jsonDecode(response.body);
    if (responseData['value']) {
      return responseData['sessionId'];
    } else {
      return null;
    }
  }

  static Future<Map?> pollClientComposites(String session) async {
    http.Response response =
        await http.post(Uri.parse(url + '/api/poll/?sessionid=' + session));
    try {
      Map responseData = jsonDecode(response.body);
      if (responseData['value']) {
        return responseData['composites'];
      } else {
        return null;
      }
    } on FormatException {}
  }
}
