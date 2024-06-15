import 'dart:convert';

import 'package:http/http.dart';

import '../model/activate.dart';
import '../model/bookResponse.dart';
import '../model/login.dart';
import '../model/ressets_password.dart';
import '../model/user_register.dart';

class BookService {
  static String BASE = "nuqtalar.idrok.group";
  static Map<String, String> header = {'Content-Type': 'application/json; charset=UTF-8'};
  static String API_GET_BOOK = "/api/book/";
  static String API_GET_USER = "api/users/user/";
  static String API_GET_CARD_INFO = "api/infos/card_info/";
  static String API_GET_INFO = "api/infos/info/";
  static String API_GET_SCHEME = "api/schema/";
  static String API_POST_TRANSACTIONS = "api/transactions/";
  static String API_POST_ACTIVATE = "api/users/activate/";
  static String API_POST_LOGIN = "api/users/login/";
  static String API_POST_REGISTER = "api/users/register/";
  static String API_POST_PASSWORD = "api/users/reset-password/";
  static String API_POST_RESSET = "api/users/reset-password-confirm/";

  static Future<String?> GET(String api, Map<String, dynamic> params) async {
    var uri = Uri.https(BASE, api, params);
    Response response = await get(uri, headers: header);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static paramsGET() {
    Map<String, String> params = {};
    return params;
  }

  static Future<String?> POST(String api, Map<String, dynamic> params) async {
    var uri = Uri.https(BASE, api);
    Response response = await post(uri, headers: header, body: jsonEncode(params));
    print("Request: ${uri.toString()}");
    print("Request Body: ${jsonEncode(params)}");
    print("Response Status Code: ${response.statusCode}");
    print("Response Body: ${response.body}");

    if (response.statusCode == 201 || response.statusCode == 200) {
      return response.body;
    } else {
      print("Error: ${response.reasonPhrase}");
    }
    return null;
  }

  static Future<String?> registerUser(Register register) async {
    return await POST(API_POST_REGISTER, register.toJson());
  }

  static Future<String?> activateUser(Activate activate) async {
    return await POST(API_POST_ACTIVATE, activate.toJson());
  }

  static Future<String?> loginUser(Login login) async {
    return await POST(API_POST_LOGIN, login.toJson());
  }

  static Future<String?> resetPassword(ResPaswords resPasswords) async {
    return await POST(API_POST_PASSWORD, resPasswords.toJson());
  }
  static Result parseResponse(String response){
    Map<String, dynamic> jsonMap = jsonDecode(response);
    Result result = Result.fromJson(jsonMap);
    return result;

  }
}