import 'package:flutter/foundation.dart';

class Increment with ChangeNotifier {
  int _counter=0;

  int get getCounter {
    return _counter;
  }

  void increment() {
    _counter++;
    notifyListeners();
  }

}