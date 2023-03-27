import 'package:get/get.dart';

class PageTwoController extends GetxController {
  RxInt count_1 = 0.obs;
  RxInt count_2 = 0.obs;
  void increment_1() {
    count_1++;
  }

  void increment_2() {
    count_2++;
  }

  void decrement_1() {
    count_1--;
  }

  void decrement_2() {
    count_2--;
  }

  int sum() => count_1.value + count_2.value;
}
