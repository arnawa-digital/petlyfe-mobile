import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_text_field.dart';
import 'package:petlyfe_mobile/widgets/ui/layouts/auth/auth_layout.dart';
import 'package:petlyfe_mobile/widgets/ui/or_divider.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: AuthLayout(
              bannerImagePath: 'assets/images/login banner.png',
              iconPath: 'assets/icons/svg/login icon.svg',
              welcomeText: 'Selamat Datang Kembali',
              descriptionText:
                  "Daftar sekarang dan nikmati layanan yang kami tawarkan pada aplikasi kami.",
              child: Form(
                key: controller.formLogin,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextField(
                      label: "Email",
                      controller: controller.emailLoginController,
                      hintText: "Masukkan email kamu",
                      prefixIcon: Icon(Icons.email),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Obx(
                      () => CustomTextField(
                        label: "Password",
                        controller: controller.passwordLoginController,
                        hintText: "Password",
                        isPassword: true,
                        obscureText: controller.isShowPassword.value,
                        prefixIcon: Icon(Icons.email),
                        onPressed: controller.showPassword,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Obx(() {
                              return Checkbox(
                                  value: controller.isRememberMe.value,
                                  onChanged: controller.rememberMe);
                            }),
                            Text("Remember Me",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Text("Lupa Password?"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text("Masuk",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(height: 16),
                    OrDivider(),
                    SizedBox(height: 16),
                  ],
                ),
              ))),
    );
  }
}
