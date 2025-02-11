import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthLayout extends StatelessWidget {
  final String bannerImagePath;
  final String iconPath;
  final String welcomeText;
  final String descriptionText;
  final Widget child;

  const AuthLayout({
    super.key,
    required this.bannerImagePath,
    required this.iconPath,
    required this.welcomeText,
    required this.descriptionText,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Image.asset(
                bannerImagePath,
                fit: BoxFit.fitWidth,
                width: width,
                height: height * 0.4,
              ),
              Positioned(
                top: height * 0.4 - 100,
                child: Container(
                  height: height,
                  width: width,
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        iconPath,
                        width: 100,
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Text(
                              welcomeText,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              descriptionText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      child,
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
