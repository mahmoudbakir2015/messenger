import 'dart:ui';
import 'package:get/get.dart';
import '../main.dart';

class MyLocaleController extends GetxController {
  Locale initialLan = sharedPref.getString("lang") == null
      ? Get.deviceLocale!
      : Locale(sharedPref.getString("lang")!);

  void changeLan(String codeLan) {
    Locale locale = Locale(codeLan);
    sharedPref.setString("lang", codeLan);
    Get.updateLocale(locale);
  }
}
