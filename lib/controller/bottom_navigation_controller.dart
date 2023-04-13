import 'package:flutter/cupertino.dart';
class BottomNavigationController extends ChangeNotifier {
  int currentIndex = 0;
  indexUpdate({required value}) {
    currentIndex = value;
    notifyListeners();
  }
}
