import 'package:get/get.dart';

class PageOneController extends GetxController{
  int count_1=0;
  int count_2=0;
  void increment_1(){
    count_1++;
    update();
  }
  void increment_2(){
    count_2++;
    update();
  }
  void decrement_1(){
    count_1--;
    update();
  }
  void decrement_2(){
    count_2--;
    update();
  }
  int sum()=>count_1+count_2;
}