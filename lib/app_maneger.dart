import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model/SoursesResponse.dart';

class APImanger {
  static Future<SoursesResponse> getSoureses() async {
    http.Response response = await http.get(Uri.parse(
            'https://newsdata.io/api/1/news?country=eg&apikey=pub_411884ac78d60b15c77fc6f4dd9cc44d56e1c'))
        as http.Response;
    // print(response.body);
    SoursesResponse soursesResponse =
        SoursesResponse.fromJson(jsonDecode(response.body));
    if (response.statusCode >= 200 && response.statusCode < 300) {
      //todo: response sucsess convert data to jeson class
      return soursesResponse;
    } else {
      throw Exception('unable to fatch data ');
    }
  }
}
