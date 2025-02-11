import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final formRegister = GlobalKey<FormState>();
  final emailRegisterController = TextEditingController();
  final passwordRegisterController = TextEditingController();

  final isShowPassword = false.obs;
  final isAgree = false.obs;

  void showPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  void agree(bool? value) {
    isAgree.value = value!;
  }

  void register() {
    if (formRegister.currentState!.validate()) {
      print("coba");
    }
  }
}
