import 'dart:convert';

import 'package:http/http.dart' as http;

class SendData {
  String apiLink;
  final Map<String, String> headers = {
    "Content-type": "application/json",
    "Accept": "application/json"
  };

  void sendData() async {
    await http
        .get("https://jsonplaceholder.typicode.com/posts", headers: headers)
        .then((value) {
      // print(value.body);
      var a = jsonDecode(value.body);
      print(a[0]);
    });
  }
}
