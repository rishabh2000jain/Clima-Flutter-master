import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper({ @required this.url});
//http://api.openweathermap.org/data/2.5/weather?lat=24.5854433&lon=73.7124783&appid=4b69168de40e70bdd740121d0514cae2
  Future getData() async {

    http.Response response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
