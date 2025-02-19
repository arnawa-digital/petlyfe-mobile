import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petlyfe_mobile/app/routes/app_pages.dart';
import 'package:petlyfe_mobile/widgets/ui/custom_button.dart';
import 'package:petlyfe_mobile/widgets/ui/or_divider.dart';
import 'package:petlyfe_mobile/widgets/ui/button_back.dart';

class AuthLayout extends StatelessWidget {
  final String bannerImagePath;
  final String iconPath;
  final String title;
  final String description;
  final Widget child;
  final bool isLogin;
  final bool showBackButton;

  const AuthLayout({
    super.key,
    required this.bannerImagePath,
    required this.iconPath,
    required this.title,
    required this.description,
    required this.child,
    this.isLogin = true,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: showBackButton ? 300 : 200,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                bannerImagePath,
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(
                  showBackButton ? 50.0 : 0), // Sesuaikan tingginya
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (showBackButton)
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 10),
                      child: ButtonBack(),
                    ),
                  Container(
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    iconPath,
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  child,
                  if (isLogin || !showBackButton) ...[
                    OrDivider(),
                    const SizedBox(height: 16),
                    CustomButton(
                      onPressed: () {
                        // Action ketika tombol ditekan
                      },
                      backgroundColor: Colors.white,
                      borderColor: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/svg/google.svg',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Sign In with Google",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(isLogin
                            ? "Don't have an account?"
                            : "Already have an account?"),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(
                                isLogin ? Routes.REGISTER : Routes.LOGIN);
                          },
                          child: Text(
                            isLogin ? " Sign Up" : " Sign In",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
