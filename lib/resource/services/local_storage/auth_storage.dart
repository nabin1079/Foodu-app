import 'package:shared_preferences/shared_preferences.dart';

class Userauth{
static Future<void> authstorage(dynamic token,dynamic data)async{

SharedPreferences prefs = await SharedPreferences.getInstance();

 prefs.setString("token", token.toString());
 prefs.setString("userinfo", data.toString());
prefs.setBool("islogin", true);

}
}