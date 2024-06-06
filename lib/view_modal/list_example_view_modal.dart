import 'package:flutter/cupertino.dart';

class ListExampleViewModal with ChangeNotifier{



final List _dummyList= [];

List get dummyList => _dummyList;


void addDataOnList(dynamic value){

_dummyList.add(value);


notifyListeners();

}







}