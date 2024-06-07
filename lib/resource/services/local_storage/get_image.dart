import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class GetImage{

static  Future<String> getimage()async{

SharedPreferences pref = await SharedPreferences.getInstance();


String data= pref.getString("userInfo").toString();


return jsonDecode(data)['profile_image'];
 

} 





}