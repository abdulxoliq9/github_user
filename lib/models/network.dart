
import 'dart:convert';

import 'package:github_user/models/user.dart';
import 'package:http/http.dart';

class NetWork{

  static String BASE = 'api.github.com';
  static Map<String,String> headers = {
    'Content-Type': 'application/json; charset=UTF-8'
  };

  static String API = '/users/abdulxoliq9';

  static Future<String> GET(String api, Map<String,String> params)async{
    var uri =Uri.https(BASE, api, params);
    var response = await get(uri,headers:headers);
    if(response.statusCode == 200){
      return response.body;
    } return '';
  }

  static Map<String,String> paramsGet(){
    Map<String,String> params = {};
    return params;
  }

  static User uData(String body){
    dynamic json = jsonDecode(body);
    var data = User.fromJson(json);
    return data;
  }

}