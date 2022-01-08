// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';
import 'package:http/http.dart' as http;

handleResponse(http.Response response) {
  try {
    print(
        'ResponseCode:: ${response.statusCode},   ResponseBody:: ${response.body}');

    final int code = response.statusCode;
    final dynamic body = json.decode(response.body);
    if (code == 200 || code == 201) {
      return SuccessModel(body);
    }

    return ErrorModel(body['message']);
  } on TimeoutException catch (e) {
    return ErrorModel(e.toString());
  } on SocketException catch (e) {
    return ErrorModel(e.toString());
  } catch (ex) {
    // print(ex.toString());
    return ErrorModel('Request failed');
  }
}
