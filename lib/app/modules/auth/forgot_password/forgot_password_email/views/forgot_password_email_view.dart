import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/utils/helpers/validators/auth_validator.dart';
import 'package:petlyfe_mobile/widgets/layouts/forgot_password/custom_forgot_password_layout.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_text_field.dart';

import '../controllers/forgot_password_email_controller.dart';

class ForgotPasswordEmailView extends GetView<ForgotPasswordEmailController> {
  const ForgotPasswordEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomForgotPasswordLayout(
          title: "Lupa Password",
          description:
              "Daftar sekarang dan nikmati layanan yang kami tawarkan pada aplikasi kami.",
          child: Form(
            key: controller.formEmail,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextField(
                    label: "Email",
                    controller: controller.emailForgotPasswordController,
                    hintText: "Masukkan email kamu",
                    prefixIcon: Icon(Icons.email),
                    validator: AuthValidator.email,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomButton(
          onPressed: controller.sendEmail,
          backgroundColor: Colors.blue,
          child: Text(
            "Kirim",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
