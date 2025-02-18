import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';
import 'package:petlyfe_mobile/utils/api/auth/AuthService.dart';
import 'package:petlyfe_mobile/utils/helpers/toast_helper.dart';
import 'package:petlyfe_mobile/widgets/ui/loading.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final formLogin = GlobalKey<FormState>();
  final emailLoginController = TextEditingController();
  final passwordLoginController = TextEditingController();

  final isShowPassword = true.obs;
  final isRememberMe = false.obs;

  void showPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  void rememberMe(bool? value) {
    isRememberMe.value = value!;
  }

  void login() async {
    if (formLogin.currentState!.validate()) {
      try {
        LoadingDialog.show(Get.context!);
        await AuthService().signIn(
          email: emailLoginController.text,
          password: passwordLoginController.text,
          rememberMe: isRememberMe.value,
        );
        ToastHelper.show(
            backgroundColor: Colors.green,
            message: "Login Berhasil",
            fontSize: 16.0,
            textColor: Colors.white);
        Get.offAllNamed(Routes.HOME);
      } catch (e) {
        ToastHelper.show(
            message: e.toString(),
            backgroundColor: Colors.red,
            fontSize: 16.0,
            textColor: Colors.white);
        LoadingDialog.hide(Get.context!);
      }
    }
  }
}
