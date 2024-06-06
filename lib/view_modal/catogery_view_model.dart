import 'dart:convert';

import 'package:ecommerce/model/catogery_model.dart';
import 'package:ecommerce/resource/components/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;

class CategoryViewModal with ChangeNotifier{
 bool _isLoading =false;
bool get isLoading => _isLoading;
final List<CategoryModal> _categoryData =[];
List<CategoryModal> get categoryData => _categoryData;
Future<void> fetchCategoryList() async{



  try{

_isLoading = true;
notifyListeners();
final response = await http.get(Uri.parse("https://saara24shopping.com/api/ecommerce/categories/all"));

if(response.statusCode==200){
var data= jsonDecode(response.body)['data'];
_categoryData.clear();
for(var i in data){
  _categoryData.add(CategoryModal.fromJson(i));

}
_isLoading = false;
notifyListeners();


}else{
  String msg = jsonDecode(response.body)['message'];
  ToastMes.toastMe(msg,);
  _isLoading=false;
  notifyListeners();
}




  }
  catch(error){
    print(error);
  }
}




}