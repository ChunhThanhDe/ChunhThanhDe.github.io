import 'dart:ui';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../generated/translations.g.dart';

class NavigationController {
  AppLocale get vn => AppLocale.vn;

  AppLocale get en => AppLocale.en;

  AppLocale get currentLocale => LocaleSettings.currentLocale;

  String navigation(int i) => texts.tabs.tabs[i];

  void changeLocale(AppLocale code) {
    LocaleSettings.setLocale(code);
    Intl.defaultLocale = code.languageCode;
    Get.updateLocale(Locale(code.languageCode));
  }
}
