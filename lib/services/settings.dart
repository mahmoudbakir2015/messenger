import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';

class SettingsServices extends GetxService {
  Future<SettingsServices> initial() async {
    sharedPref = await SharedPreferences.getInstance();
    return this;
  }
}

Future initailServices() async {
  await Get.putAsync(() => SettingsServices().initial());
}
