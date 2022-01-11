import 'package:flutter/cupertino.dart';

class MainViewModel with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCount() {
    // 상태 바꾸고
    _counter++;
    notifyListeners();
  }
}
