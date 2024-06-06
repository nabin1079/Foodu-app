import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SessionManage{
  static Future<String> getToken()async{


    SharedPreferences pref = await SharedPreferences.getInstance();

    return jsonDecode(pref.getString("token").toString());


  }
   static Future<bool> loginCheck()async{


    SharedPreferences pref = await SharedPreferences.getInstance();

    return pref.getBool("islogin") ?? false;


  }


}