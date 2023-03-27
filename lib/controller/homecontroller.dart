import 'package:get/get.dart';

class TestController extends GetxController{
int count=0;
void increament(){
  count++;
  update();
}
void decreament(){
  count--;
  update();
}
}