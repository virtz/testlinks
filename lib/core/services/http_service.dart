// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:ajeo/core/services/response_handler.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HttpService {
  final String _baseUrl;

  HttpService(this._baseUrl);

  String get baseUrl => _baseUrl;

  Future<dynamic> get(String path, Map<String, dynamic>? payload) async {
    final String url = baseUrl + path;
    // print('Request::URL: $url');
    final response = await http
        .get(
          Uri.parse(url),
          headers: await getHeaders(),
        )
        .timeout(const Duration(seconds: 40));
    return handleResponse(response);
  }
 Future<dynamic> post(String path, Map<dynamic, dynamic> body) async {
    final String url = baseUrl + path;
    print('URL:: $url, body:: ${json.encode(body)}');

    final response = await http
        .post(Uri.parse(url),
            headers: await getHeaders(), body: json.encode(body))
        .timeout(const Duration(seconds: 30));

    return handleResponse(response);
  }

  Future<dynamic> postWithoutHeader(
      String path, Map<dynamic, dynamic> body, firebaseAuthToken) async {
    final String url = baseUrl + path;
    print('URL:: $url, body:: ${json.encode(body)}');

    final response = await http
        .post(Uri.parse(url),
            headers: {
              'Content-Type': 'application/json',
              "Authorization": "Bearer $firebaseAuthToken"
            },
            body: json.encode(body))
        .timeout(const Duration(seconds: 30));

    return handleResponse(response);
  }

  Future<dynamic> patch(String path, Map<dynamic, dynamic> body) async {
    final String url = _baseUrl + path;
    print('URL:: $url, body:: ${json.encode(body)}');

    final response = await http
        .patch(Uri.parse(url),
            headers: await getHeaders(), body: json.encode(body))
        .timeout(const Duration(seconds: 30));

    return handleResponse(response);
  }

  Future<dynamic> put(String path, Map<dynamic, dynamic> body) async {
    final String url = _baseUrl + path;
    print('URL:: $url, body:: ${json.encode(body)}');

    final response = await http
        .put(Uri.parse(url),
            headers: await getHeaders(), body: json.encode(body))
        .timeout(const Duration(seconds: 30));

    return handleResponse(response);
  }

  Future<dynamic> delete(String path, {Map<dynamic, dynamic>? body}) async {
    final String url = _baseUrl + path;
    print('URL:: $url body:: $path');

    final response = await http
        .delete(Uri.parse(url),
            headers: await getHeaders(), body: json.encode(body))
        .timeout(const Duration(seconds: 30));

    return handleResponse(response);
  }

  getHeaders() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? accessToken = prefs.getString('token');
    // print('token $accessToken');
    return <String, String>{
      'Content-Type': 'application/json',
      "Authorization": "$accessToken"
    };
  }
}
