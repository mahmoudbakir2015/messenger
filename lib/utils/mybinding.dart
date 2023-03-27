import 'package:get/get.dart';
import '../controller/PageTwoController.dart';
import '../controller/homecontroller.dart';
import '../controller/pageOneController.dart';

class TestBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(()=>TestController(),permanent: true,);
  }

}
class PageOneBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(()=>PageOneController(),permanent: true,);
  }

}
class PageTwoBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(()=>PageTwoController(),permanent: true,);
  }

}

