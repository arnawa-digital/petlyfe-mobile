import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/utils/helpers/validators/auth_validator.dart';
import 'package:petlyfe_mobile/widgets/layouts/auth/auth_layout.dart';

import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_text_field.dart';

import '../controllers/forgot_password_otp_controller.dart';

class ForgotPasswordOtpView extends GetView<ForgotPasswordOtpController> {
  const ForgotPasswordOtpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthLayout(
        bannerImagePath: "assets/images/forgot password banner.png",
        iconPath: "assets/icons/svg/forgotpassword.svg",
        title: "Input Kode OTP",
        description:
            "Daftar sekarang dan nikmati layanan yang kami tawarkan pada aplikasi kami.",
        showBackButton: true,
        isLogin: false, // Supaya tidak menampilkan tombol register/login
        child: Form(
          key: controller.formOtp,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextField(
                  label: "Kode OTP",
                  controller: controller.otpController,
                  hintText: "Masukkan email kamu",
                  prefixIcon: Icon(Icons.email),
                  validator: AuthValidator.email,
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomButton(
          onPressed: controller.sendOtp,
          backgroundColor: Colors.blue,
          child: Text(
            "Verifikasi Kode OTP",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
