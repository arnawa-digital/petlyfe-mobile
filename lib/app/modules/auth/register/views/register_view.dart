import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petlyfe_mobile/utils/helpers/validators/auth_validator.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_text_field.dart';
import 'package:petlyfe_mobile/widgets/layouts/auth/auth_layout.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: AuthLayout(
              isLogin: false,
              bannerImagePath: 'assets/images/register banner.png',
              iconPath: 'assets/icons/svg/register icon.svg',
              welcomeText: 'Selamat Datang',
              descriptionText:
                  "Daftar sekarang dan nikmati layanan yang kami tawarkan pada aplikasi kami.",
              child: Form(
                key: controller.formRegister,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextField(
                      label: "Email",
                      controller: controller.emailRegisterController,
                      hintText: "Masukkan email kamu",
                      prefixIcon: Icon(Icons.email),
                      validator: AuthValidator.email,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Obx(
                      () => CustomTextField(
                        label: "Password",
                        controller: controller.passwordRegisterController,
                        hintText: "Password",
                        isPassword: true,
                        obscureText: controller.isShowPassword.value,
                        prefixIcon: Icon(Icons.email),
                        onPressed: controller.showPassword,
                        validator: AuthValidator.password,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Obx(() {
                          return Checkbox(
                            value: controller.isAgree.value,
                            onChanged: controller.agree,
                          );
                        }),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text:
                                  "When you’re signing to this apps you’re agreeing to our apps ",
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "Privacy Policy",
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Navigasi ke halaman Privacy Policy
                                    },
                                ),
                                const TextSpan(text: " and "),
                                TextSpan(
                                  text: "Terms & Condition",
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Navigasi ke halaman Terms & Condition
                                    },
                                ),
                                const TextSpan(text: "."),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomButton(
                      onPressed: controller.register,
                      backgroundColor: Colors.blue,
                      child: Text("Daftar Sekarang",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ))),
    );
  }
}
