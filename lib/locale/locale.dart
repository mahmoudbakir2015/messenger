import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "الصفحة الاولي ",
          "2": "الصفحة الثانية ",
          "3": "الصفحة الثالثة ",
          "t": "للتجربة ",
          "lan": " تغيير اللغة",
        },
        "en": {
          "1": "page 1",
          "2": "page 2",
          "3": "page 3",
          "t": "Test",
          "lan": "change Language",
        },
      };
}
