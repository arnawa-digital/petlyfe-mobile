import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/utils/helpers/validators/auth_validator.dart';
import 'package:petlyfe_mobile/widgets/layouts/forgot_password/custom_forgot_password_layout.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_text_field.dart';

import '../controllers/new_password_controller.dart';

class NewPasswordView extends GetView<NewPasswordController> {
  const NewPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomForgotPasswordLayout(
          title: "Input Kode OTP",
          description:
              "Daftar sekarang dan nikmati layanan yang kami tawarkan pada aplikasi kami.",
          child: Form(
            key: controller.formPassword,
            child: SingleChildScrollView(
              child: Obx(() {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextField(
                      label: "Kata Sandi",
                      controller: controller.passwordController,
                      isPassword: true,
                      obscureText: controller.isShowPassword.value,
                      hintText: "Masukkan email kamu",
                      prefixIcon: Icon(Icons.email),
                      onPressed: controller.showPassword,
                      validator: AuthValidator.password,
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      label: "Verifikasi Kata Sandi",
                      controller: controller.confirmPasswordController,
                      isPassword: true,
                      hintText: "Masukkan email kamu",
                      prefixIcon: Icon(Icons.email),
                      obscureText: controller.isShowPasswordConfirm.value,
                      onPressed: controller.showPasswordConfirm,
                      validator: (value) =>
                          AuthValidator.validateConfirmPassword(
                              value, controller.passwordController.text),
                    ),
                    SizedBox(height: 16),
                    CustomButton(
                      onPressed: controller.newPassword,
                      backgroundColor: Colors.blue,
                      child: Text(
                        "Perbarui Kata Sandi",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
