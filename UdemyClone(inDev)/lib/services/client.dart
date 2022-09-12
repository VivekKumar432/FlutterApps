import 'dart:convert';

import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();
  Future<List> getCourse() async {
    String url =
        "https://raw.githubusercontent.com/VivekKumar432/misc/main/apicall.json";
    Response response = await _dio.get(url);
    print(response.runtimeType);
    var result = jsonDecode(response.data);
    print(result['courses']);
    return result['courses'];
  }

  final Dio _dioo = Dio();
  Future<Map<String, dynamic>> getCourseDetails() async {
    String url =
        "https://raw.githubusercontent.com/navittripathi/url29/main/url222";
    Response response = await _dioo.get(url);
    print(response.data.runtimeType);
    var details = jsonDecode(response.data);
    print(details);
    return details;
  }
}
