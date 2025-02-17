import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';

class NewPasswordController extends GetxController {
  //TODO: Implement NewPasswordController

  final formPassword = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final isShowPassword = false.obs;
  final isShowPasswordConfirm = false.obs;

  void showPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  void showPasswordConfirm() {
    isShowPasswordConfirm.value = !isShowPasswordConfirm.value;
  }

  void newPassword() {
    if (formPassword.currentState!.validate()) {
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}
