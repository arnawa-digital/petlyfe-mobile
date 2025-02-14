import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';

class ForgotPasswordEmailController extends GetxController {
  //TODO: Implement ForgotPasswordEmailController

  final formEmail = GlobalKey<FormState>();
  final emailForgotPasswordController = TextEditingController();
  void sendEmail() {
    if (formEmail.currentState!.validate()) {
      Get.toNamed(Routes.FORGOT_PASSWORD_OTP);
    }
  }
}
