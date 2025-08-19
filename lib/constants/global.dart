import 'package:flutter/material.dart';

class Global {
  static ValueNotifier <bool> isIndonesianLanguage = ValueNotifier <bool> (false);
  static ValueNotifier <bool> showHeaderBetter = ValueNotifier <bool> (false);
  static ScrollController globalScrollController = ScrollController()..addListener(() {
    if (globalScrollController.offset <= 10) {
      showHeaderBetter.value = false;
    }
    else {
      showHeaderBetter.value = true;
    }
  });

  static double roundedBorder = 9999;
}