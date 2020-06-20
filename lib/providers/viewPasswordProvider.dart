import 'package:flutter/foundation.dart';

class ViewPassword extends ChangeNotifier {
  bool _hide = true;

  bool getToggle() => _hide;

  void toggle() {
    _hide = !_hide;
    notifyListeners();
  }
}