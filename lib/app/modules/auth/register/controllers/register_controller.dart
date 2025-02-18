import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';
import 'package:petlyfe_mobile/utils/api/auth/AuthService.dart';
import 'package:petlyfe_mobile/utils/helpers/toast_helper.dart';
import 'package:petlyfe_mobile/widgets/ui/loading.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final formRegister = GlobalKey<FormState>();
  final emailRegisterController = TextEditingController();
  final passwordRegisterController = TextEditingController();

  final isShowPassword = true.obs;
  final isAgree = false.obs;
  final isLoading = false.obs;

  void showPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  void agree(bool? value) {
    isAgree.value = value!;
  }

  void register() async {
    if (formRegister.currentState!.validate()) {
      if (isAgree.value == false) {
        ToastHelper.show(
            message: "Anda harus menyetujui syarat dan ketentuan",
            backgroundColor: Colors.red,
            fontSize: 16.0,
            textColor: Colors.white);
        return;
      }
      try {
        LoadingDialog.show(Get.context!);
        await AuthService().signUp(
          email: emailRegisterController.text,
          password: passwordRegisterController.text,
        );
        Get.offAllNamed(Routes.HOME);
        ToastHelper.show(
            backgroundColor: Colors.green,
            message: "Registrasi Berhasil",
            fontSize: 16.0,
            textColor: Colors.white);
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
