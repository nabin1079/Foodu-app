import 'dart:convert';

import 'package:ecommerce/model/sliddermodel.dart';
import 'package:ecommerce/resource/components/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;

class SliderViewModel with ChangeNotifier{

 final List<Slidermodel> _sliderdata = [];


List<Slidermodel> get sliderdata  => _sliderdata;

  bool _isLoading = false;
bool get isLoading => _isLoading;

Future<void> fetchsliderapp()async{

try{
_isLoading=true;

final response = await http.get(Uri.parse("https://saara24shopping.com/api/ecommerce/sliders"));


if(response.statusCode==200){
  
  _sliderdata.clear();

var data= jsonDecode(response.body)['data'];

for(var a in data){
  _sliderdata.add(Slidermodel.fromJson(a));
}
_isLoading = false;




}else{
  String message = jsonDecode(response.body)['message'];
_isLoading=false;
  ToastMes.toastMe(message);
  notifyListeners();
}

}
catch(error){
_isLoading=false;
  print(error);
  notifyListeners();
}

}
 
 



}