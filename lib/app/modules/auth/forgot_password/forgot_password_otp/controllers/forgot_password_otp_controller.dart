import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';

class ForgotPasswordOtpController extends GetxController {
  //TODO: Implement ForgotPasswordOtpController

  final formOtp = GlobalKey<FormState>();
  final otpController = TextEditingController();

  void sendOtp() {
    if (formOtp.currentState!.validate()) {
      Get.toNamed(Routes.NEW_PASSWORD);
    }
  }
}
