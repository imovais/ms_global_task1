import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool passview = false.obs;

  void showpass() {
    passview.value = !passview.value;
  }
}
