import 'package:flutter/foundation.dart';

class Increment with ChangeNotifier {
  int counter=0;
  void increment() {
    counter++;
    notifyListeners();
  }
}