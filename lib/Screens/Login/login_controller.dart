import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool passview = true.obs;

  void showpass() {
    passview.value = !passview.value;
  }
}
