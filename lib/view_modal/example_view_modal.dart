import 'package:flutter/cupertino.dart';

class ExampleViewModal with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void changeLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
