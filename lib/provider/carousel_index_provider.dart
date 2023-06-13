import 'package:flutter/foundation.dart';

class CarouselIndexProvider with ChangeNotifier {
  int _activeIndex = 0;

  int get activeIndex => _activeIndex;

  void setActiveIndex(int index) {
    _activeIndex = index;
    notifyListeners();
  }
}
