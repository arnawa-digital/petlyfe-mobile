import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/utils/helpers/validators/auth_validator.dart';
import 'package:petlyfe_mobile/widgets/layouts/auth/auth_layout.dart';

import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_text_field.dart';

import '../controllers/forgot_password_email_controller.dart';

class ForgotPasswordEmailView extends GetView<ForgotPasswordEmailController> {
  const ForgotPasswordEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthLayout(
        bannerImagePath: "assets/images/forgot password banner.png",
        iconPath: "assets/icons/svg/forgotpassword.svg",
        title: "Lupa Password",
        description: "Masukkan email kamu untuk reset password.",
        showBackButton: true,
        isLogin: false, // Supaya tidak menampilkan tombol register/login
        child: Form(
          key: controller.formEmail,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                label: "Email",
                controller: controller.emailForgotPasswordController,
                hintText: "Masukkan email kamu",
                prefixIcon: const Icon(Icons.email),
                validator: AuthValidator.email,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomButton(
          onPressed: controller.sendEmail,
          backgroundColor: Colors.blue,
          child: const Text(
            "Kirim",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
