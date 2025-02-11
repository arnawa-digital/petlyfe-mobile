import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final formLogin = GlobalKey<FormState>();
  final emailLoginController = TextEditingController();
  final passwordLoginController = TextEditingController();

  final isShowPassword = false.obs;
  final isRememberMe = false.obs;

  void showPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  void rememberMe(bool? value) {
    isRememberMe.value = value!;
  }

  void login() {
    if (formLogin.currentState!.validate()) {
      print("coba");
    }
  }
}
